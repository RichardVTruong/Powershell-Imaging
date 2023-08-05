$chromeInstallerUrl = "https://dl.google.com/chrome/install/latest/chrome_installer.exe" 
$firefoxInstallerUrl = "https://download.mozilla.org/?product=firefox-latest&os=win64&lang=en-US" 

$chromeInstalled = Test-Path -Path "C:\Program Files\Google\Chrome\Application\chrome.exe" 
$firefoxInstalled = Test-Path -Path "C:\Program Files\Mozilla Firefox\firefox.exe" 

if (-not $chromeInstalled) { 
    Write-Host "Google Chrome is not installed. Downloading and installing..." 
    $chromeInstallerPath = "$env:TEMP\chrome_installer.exe" 
    (New-Object System.Net.WebClient).DownloadFile($chromeInstallerUrl, $chromeInstallerPath) 
    Start-Process -FilePath $chromeInstallerPath -Wait Remove-Item $chromeInstallerPath 
    Write-Host "Google Chrome has been installed." 
} else { 
    Write-Host "Google Chrome is already installed." 
} 

if (-not $firefoxInstalled) { 
    Write-Host "Mozilla Firefox is not installed. Downloading and installing..." 
    $firefoxInstallerPath = "$env:TEMP\firefox_installer.exe" 
    (New-Object System.Net.WebClient).DownloadFile($firefoxInstallerUrl, $firefoxInstallerPath) 
    Start-Process -FilePath $firefoxInstallerPath -Wait 
    Remove-Item $firefoxInstallerPath 
    Write-Host "Mozilla Firefox has been installed." 
} else { 
    Write-Host "Mozilla Firefox is already installed." 
} 