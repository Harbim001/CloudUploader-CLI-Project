# CloudUploader-CLI-Project

CloudUploader is a command-line interface (CLI) tool designed to simplify uploading files to Azure Blob Storage. It automates the process of authentication and file transfer to Azure, providing a seamless experience for users who need a quick and efficient way to manage cloud storage.

## Features

- Easy authentication with Azure.
- Multiple file Upload directly to your Azure Blob Storage container.
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

- After installation, the clouduploader command will be available globally in your terminal.

## Usage 

To upload a file to Azure Blob Storage, use the following command:

```bash
./clouduploader.sh /path/to/file1 /path/to/file2 ...
```
After the upload, you can generate a shareable link by responding 'yes' when prompted. Below is a snapshot of the tool in action

