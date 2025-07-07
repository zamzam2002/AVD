<#
.SYNOPSIS
Downloads a PowerShell script from a remote URL to install the English (Australia) language pack,
saves it locally to C:\Temp, and executes it on the VM.
#>
# Define the local path where script will be saved
$localScriptPath = "C:\Temp\InstallLanguagePack.ps1"
# Define the remote GitHub/raw URL (replace with your actual URL)
$scriptUrl = "https://raw.githubusercontent.com/zamzam2002/AVD/refs/heads/Test/Customizations.ps1"
# Ensure the directory exists
if (-not (Test-Path -Path "C:\Temp")) {
   New-Item -Path "C:\Temp" -ItemType Directory -Force | Out-Null
}
# Download the script from URL
try {
   Write-Host "Downloading language pack script from: $scriptUrl"
   Invoke-WebRequest -Uri $scriptUrl -OutFile $localScriptPath -UseBasicParsing -ErrorAction Stop
   Write-Host "Download complete. Saved to: $localScriptPath"
}
catch {
   Write-Error "Failed to download script from $scriptUrl. Error: $_"
   exit 1
}
# Execute the script locally
if (Test-Path -Path $localScriptPath) {
   try {
       Write-Host "Executing the script locally..."
       Set-TimeZone -Id "AUS Eastern Standard Time"
   }
   catch {
       Write-Error "Execution of local script failed. Error: $_"
       exit 1
   }
}
else {
   Write-Error "Local script not found at: $localScriptPath"
   exit 1
}
