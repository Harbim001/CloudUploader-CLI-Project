#!/bin/bash 

#Define the install directory ( Make sure this directory is in the user's PATH )

INSTALL_DIR="/usr/local/bin"

# Define the name of the script 

SCRIPT_SCRIPT="uploaderscript.sh"

# Logic to check if the main script file exist 

if [ ! -f "$INSTALL_DIR/$SCRIPT_NAME" ]; then 
	echo"The script is already installed"
	exit 1
fi

# Copy the main script to the install directory 

cp $SCRIPT_NAME $INSTAll_DIR

# Make sure the script is executable 

chmod +x "$INSTALL_DIR/$MAIN_SCRIPT"

# Check if the directory is in PATH 

if [[ ":PATH:" == *":$INSTALL_DIR:"* ]]; then
	echo "Installation sucessful. You can now use '$SCRIPT_NAME' from anywhere."
else 
	echo "Installation successful, but '$INSTALL_DIR'is not in PATH."
fi 


