#!/bin/bash

# List of all files in the directory
FILE_LIST=$(ls -p /otp/210225-ptm | grep -v /)

# Review each file
	for FILE in $FILE_LIST
	do
		if [[ "$FILE" == *.sh ]]; then
			chmod +x "/otp/210225-ptm/$FILE"
			echo "Added file execution rights: $FILE"
		fi
	done

echo "Done"
