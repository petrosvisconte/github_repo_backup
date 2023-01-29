# github_repo_backup
## About:
A Bash script that automatically backs up all of your personal github repositories (private and public) to your local machine. For use on any linux machine.  
### Requirements:
- You will first need to generate a github api token (instructions provided below)
- You will need to modify some of the variables in the script (instructions provided below)
- You may need to type a few commands in the CLI (instructions provided below)
## Install and configuration:
**Note:** If you do not already have an api token with repository access, then follow the instructions at the [end](https://github.com/petrosvisconte/github_repo_backup/edit/main/README.md#create-a-new-github-api-token) of the README first to generate one, then come back here afterwards.  
#### Installation:
Clone the repository and then open the repo_backup file with your editor of choice (example code uses "vim")
- The following example assumes that you are in your home directory
```bash
git clone https://github.com/petrosvisconte/github_repo_backup.git
vim github_repo_backup/auto_backup
```
#### Configuration:
With the auto_backup script now open you will need to modify the following section:

## Create a new github api token
- General instructions from github: https://docs.github.com/en/enterprise-server@3.4/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token  
1. Navigate to your main profile page
2. Click on "settings" in the dropdown menu located right next to your profile picture in the upper right hand corner
<img src="https://user-images.githubusercontent.com/94921305/215304843-8ce45595-2eaf-4044-9d29-dc641117ee39.png" width="150"/>  
3. Scroll down to the bottom of settings and click on "developer settings"  
<img src="https://user-images.githubusercontent.com/94921305/215304968-ca8bf853-5143-4501-be41-48640b7eaa5a.png" width="200"/>
4. Then click on "personal access tokens"
<img src="https://user-images.githubusercontent.com/94921305/215305116-a829fb8d-b184-4cb2-828a-9ff37e1bc5bd.png" width="200"/>
5. And then on "generate new token" (you may need to select "Tokens(classic)" first)
<img src="https://user-images.githubusercontent.com/94921305/215305169-1499f1ef-fc52-45f7-b833-bc6d65c6a5cb.png" width="500"/>
6. Enter what you wish for the note, and set the expiration as you would like. Just note that once it expires you will need to modify the script and replace the old token with the new one. You can set the expiration to "No expiration" if you would like to avoid this.   
<img src="https://user-images.githubusercontent.com/94921305/215305390-c422ddb4-dfc8-44b7-aaf2-d2db55f127a3.png" width="500"/>
<img src="https://user-images.githubusercontent.com/94921305/215305393-70af5169-0b1c-4149-9223-ec11281a2791.png" width="500"/>
7. Select the scopes that the token has access to. You will need to select all the available options for "repo" to have full repository access. Any other scopes are optional, only full repository access is required for the script. 
<img src="https://user-images.githubusercontent.com/94921305/215305480-94f9d82e-3c9a-436b-a40e-7c42c2d842fc.png" width="500"/>
8. Now generate the token and copy the api key. You only have readable access to the key once so make sure to save it somewhere. 
<img src="https://user-images.githubusercontent.com/94921305/215305574-232ac3c4-5a10-4469-aada-fb721159eab2.png" width="500"/>
<img src="https://user-images.githubusercontent.com/94921305/215305587-5eaebc02-c793-42f0-9466-3531edc28c90.png" width="500"/end>
