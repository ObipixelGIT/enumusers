# enumusers
Enumerate local user accounts and local groups on a Windows operating system and a great OSINT tool.

## How the script works?

- This PowerShell script is used to enumerate local user accounts and local groups on a Windows operating system.
- It makes use of the built-in PowerShell cmdlets Get-LocalUser and Get-LocalGroup to retrieve the list of local users and groups on the system.
- The script first calls Get-LocalUser to retrieve a list of local user accounts.
- It then checks if any user accounts were found and if so, it iterates through the list and prints out the name of each user account.
- If no user accounts were found, it prints out a message saying "No local user accounts found."
- Next, the script calls Get-LocalGroup to retrieve a list of local groups.
- It checks if any groups were found and if so, it iterates through the list and prints out the name of each group.
- If no groups were found, it prints out a message saying "No local groups found."

## Why use this script?

- This script can be useful for system administrators or security professionals who need to quickly and easily enumerate local users and groups on a Windows system.
- It can also be used as part of a larger script or tool to perform more complex tasks, such as checking group membership or managing user accounts and permissions.

## Preparation

To use this script, you need to have PowerShell installed on your Windows system. PowerShell is included by default in most modern versions of Windows, so you should not need to install anything extra. You can run the script by opening PowerShell and navigating to the directory where the script is located. Then, simply type the name of the script (including the .ps1 file extension) and press Enter. The script will then execute and display the list of local users and groups on the system.

## Usage
```powershell
PS C:\> .\enumusers.ps1
```

## Example script
```powershell
# Enumerate local user accounts
$localUsers = Get-LocalUser

if ($localUsers) {
    Write-Host "Local User Accounts:" -ForegroundColor Green
    foreach ($user in $localUsers) {
        Write-Host "`t$user.Name" -ForegroundColor Cyan
    }
} else {
    Write-Host "No local user accounts found." -ForegroundColor Red
}

# Enumerate local groups
$localGroups = Get-LocalGroup

if ($localGroups) {
    Write-Host "Local Groups:" -ForegroundColor Green
    foreach ($group in $localGroups) {
        Write-Host "`t$group.Name" -ForegroundColor Cyan
    }
} else {
    Write-Host "No local groups found." -ForegroundColor Red
}
```

## Disclaimer
"The scripts in this repository are intended for authorized security testing and/or educational purposes only. Unauthorized access to computer systems or networks is illegal. These scripts are provided "AS IS," without warranty of any kind. The authors of these scripts shall not be held liable for any damages arising from the use of this code. Use of these scripts for any malicious or illegal activities is strictly prohibited. The authors of these scripts assume no liability for any misuse of these scripts by third parties. By using these scripts, you agree to these terms and conditions."

## License Information

This library is released under the [Creative Commons ShareAlike 4.0 International license](https://creativecommons.org/licenses/by-sa/4.0/). You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to use our code, you email us with a link to the product being created and/or sold. We want bragging rights that we helped (in a very small part) to create your 9th world wonder. We would like the opportunity to feature your work on our homepage.
