#!/bin/bash

# backups github repos
# Author: Pierre Visconti

set -euo pipefail


######## CHANGE THE FOLLOWING VARIABLES BELOW #########
AUTH_TOKEN="paste your api key here"
BACKUP_DIR_NAME="name of the folder where you wish to save the backups"
PATH_TO_SCRIPT_DIR="the path to the directory that contains the auto_backup script"
PATH_TO_BACKUP_DIR="the path to the directory that contains BACKUP_DIR_NAME"
GITHUB_USERNAME="your github username"
#######################################################



# creates a temporary file of all repository names
FILE="${PATH_TO_SCRIPT_DIR}/repo_list.txt"
touch "${FILE}"
curl -H "Authorization: token ${AUTH_TOKEN}" -s "https://api.github.com/user/repos" | grep '"name":' >> "${FILE}"

# clones repositories (removes previous versions and replaces with current ones if required)
while IFS= read -r line; do
	IFS=':' read -r var1 name<<< "${line}"
	name="${name%\"*}"
	name="${name#*\"}"
	repo_path="${PATH_TO_BACKUP_DIR}/${BACKUP_DIR_NAME}/${name}"
	if [ ! -d "${repo_path}" ]; then
		mkdir "${repo_path}"
	elif [ -d "${repo_path}" ]; then
		shopt -s dotglob
		rm -rf "${repo_path}"/*
		shopt -u dotglob
	fi
	git clone "https://${AUTH_TOKEN}@github.com/${GITHUB_USERNAME}/${name}.git" "${repo_path}"
	# echo "> adding to ${name}"
done < "${FILE}"

# deletes the temporary file
rm -f "${FILE}"
echo "> Backup complete"
