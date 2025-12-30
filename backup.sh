#/bin/bash

DATE=$(date --utc +%Y-%m-%dT%H:%M:%S%Z)
SOURCE_DIR="$HOME/python/"
BACKUP_PATH="$HOME/backup/python_code/" 
FULL_BACKUP_PATH="$HOME/backup/python_code/$DATE" 

if [ -e $BACKUP_PATH ]; then 
	echo "the backup folder has been already created"
else
	$(/usr/bin/mkdir --parents "$BACKUP_PATH") && echo "$(BACKUP_PATH) was succesfully created"
fi
tar cf "$FULL_BACKUP_PATH.tar" -C "$SOURCE_DIR" .
