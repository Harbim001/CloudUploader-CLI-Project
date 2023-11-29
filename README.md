# CloudUploader-CLI-Project

CloudUploader is a command-line interface (CLI) tool designed to simplify uploading files to Azure Blob Storage. It automates the process of authentication and file transfer to Azure, providing a seamless experience for users who need a quick and efficient way to manage cloud storage.

## Features

- Easy authentication with Azure.
- Multiple files Upload directly to your Azure Blob Storage container.
- Generate shareable links for uploaded files.
- Streamlined installation process.

## Prerequisites

- [Azure CLI](https://docs.microsoft.com/cli/azure/install-azure-cli) must be installed and configured on your machine.
- An active Azure subscription, and permissions to create and manage Azure Blob Storage resources.
- Bash environment, which is available on Linux/Unix, macOS, and Windows Subsystem for Linux (WSL).

## Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Harbim001/CloudUploader-CLI-Project.git
   ```
2. **Navigate to the Project Directory**:
   ```bash
   cd CloudUploader-CLI-Project
   ```
3. **Run the Installation Script**:
   ```bash
   chmod +x installerscript.sh
   ./install.sh

- After installation, the uploaderscript command will be available globally in your terminal.

## Setting Environment Variables

Set up the following environment variables with your Azure Service Principal credentials for the script to use:

```bash
export AZ_APP_ID='your-app-id'
export AZ_PASSWORD='your-app-password'
export AZ_TENANT_ID='your-tenant-id'
```

## Usage 

To upload a file to Azure Blob Storage, use the following command:

```bash
./uploaderscript.sh /path/to/file
```
To upload multiple files to Azure Blob Storage, use the following command:

```bash
./uploaderscript.sh /path/to/file1 /path/to/file2 ...
```

After the upload, you can generate a shareable link by responding 'yes' when prompted. 

Below is a snapshot of the tool in action:

<img width="797" alt="Screenshot 2023-11-25 at 20 47 46" src="https://github.com/Harbim001/CloudUploader-CLI-Project/assets/98036782/fa91ea2c-5d8d-45df-a141-221c3bc23051">

<img width="1403" alt="Screenshot 2023-11-29 at 23 29 06" src="https://github.com/Harbim001/CloudUploader-CLI-Project/assets/98036782/1b0aba52-4dea-44c3-b2b5-856503d4017e">



## Troubleshooting

- **Authentication Issues**:
   - Ensure your Azure CLI is logged in `az login` and has the necessary permissions.
- **Upload Failures**:
   - Check if the specified file path is correct and if you have write permissions to the Azure Blob Storage container.
- **Link Generation Errors**:
   - Verify that your storage account name and container name are correctly configured in the script.
- **File not found errors**:
   - Ensure the paths to the files are correct and that the files exist at those locations.

## Contributing

Contributions to CloudUploader-CLI are welcome! If you have suggestions for improvement or have identified a bug, feel free to open an issue or submit a pull request.
