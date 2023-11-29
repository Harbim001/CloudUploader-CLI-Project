#!/bin/bash 

#Function to authenticate using service principal 

authenticate_with_service_principal() {
	echo "Autheticating with Azure.."

	local app_id=$AZ_APP_ID 
	local password=$AZ_PASSWORD
	local tenant_id=$AZ_TENANT_ID 


# Login with the service principal 

az login --service-principal -u "$app_id" -p "$password" --tenant "$tenant_id" > /dev/null 2>&1
if [ $? -ne 0 ]; then  
	echo "AUthentication failed"
	exit 1
fi 

}

# Function to upload a file to Azure Blob Storage 

blob_file_upload_single() { 
	local file_path=$1
	local container_name=mycontainer
	local blob_name=$(basename "$file_path")
	local storage_accounts=clouduploaderproject

	echo "Uploading file to Azure Blob Storage..." 

# Capture the standard error output & upload the file

error_message=$(az storage blob upload \
    --account-name "$storage_accounts" \
    --container-name "$container_name" \
    --file "$file_path" \
    --name "$blob_name" \
    --auth-mode login 2>&1 >/dev/null) 

# Check the exit status of the previous command  

if [ $? -ne 0 ]; then 
	echo "File upload failed"
	echo "Error: $error_message"
else 
	echo "File uploaded sucessfully"
	echo -n "Do you want to generate a shareable link? (yes/no): "
	read generate_link 

	if [[ "$generate_link" == "yes" ]]; then

		shareable_link=$(generate_sas_url "$storage_account_name" "$container_name" "$blob_name")
		echo "Shareble Link: $shareable_link"
	fi
fi 

}

# Generate a read-only SAS token for the blob storage

generate_sas_url() {
    local storage_account=$1
    local container_name=$2
    local blob_name=$3

    local sas_token=$(az storage blob generate-sas \
                      --account-name "$storage_accounts" \
                      --container-name "$container_name" \
                      --name "$blob_name" \
                      --permissions r \
                      --expiry $(date -u -d "1 day" '+%Y-%m-%dT%H:%MZ') \
		      --auth-mode login \
		      --as-user \
                      --output tsv 2>&1)

    if [ -z "$sas_token" ] || [[ $sas_token == *"ERROR"* ]];then
        echo "Failed to generate a shareable link for $blob_name.Error: $sas_token"        
	return 1
    fi

    echo "https://${storage_account}.blob.core.windows.net/${container_name}/${blob_name}?${sas_token}"
}

# Authenticate before upload 

authenticate_with_service_principal

# Loop through all provided files
for file in "$@"; do
    if [ -f "$file" ]; then
        blob_file_upload_single "$file"
    else
        echo "Error: File $file does not exist or is a directory."
       
    fi
done
