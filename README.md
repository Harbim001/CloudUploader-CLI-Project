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
   cd cloudUploader-CLI-Project
   ```
3. **Run the Installation Script**:
   ```bash
   chmod +x install.sh
   ./install.sh

- After installation, the Clouduploader command will be available globally in your terminal.

## Usage 

To upload a file to Azure Blob Storage, use the following command:

```bash
./clouduploader.sh /path/to/file1 /path/to/file2 ...
```
After the upload, you can generate a shareable link by responding 'yes' when prompted. 

Below is a snapshot of the tool in action:

<img width="810" alt="Screenshot 2023-11-25 at 20 45 06" src="https://github.com/Harbim001/CloudUploader-CLI-Project/assets/98036782/fe982336-0d77-48fd-8678-31e45dbd6aa6">

<img width="1403" alt="Screenshot 2023-11-29 at 20 54 45" src="https://github.com/Harbim001/CloudUploader-CLI-Project/assets/98036782/e8d3760a-75ed-4de0-b572-afc1984a20e7">


## Troubleshooting

- **Authentication Issues**:
   - Ensure your Azure CLI is logged in `az login` and has the necessary permissions.
- **Upload Failures**:
   - Check if the specified file path is correct and if you have write permissions to the Azure Blob Storage container.
- **Link Generation Errors**:
   - Verify that your storage account name and container name are correctly configured in the script.

## Contributing

Contributions to CloudUploader-CLI are welcome! If you have suggestions for improvement or have identified a bug, feel free to open an issue or submit a pull request.
