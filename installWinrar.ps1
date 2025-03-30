
$Path = $env:TEMP; $Installer = "rar.exe"; $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest "https://www.rarlab.com/rar/winrar-x64-711.exe" -OutFile $Path\$Installer;
Start-Process -FilePath $Path\$Installer -Args "/y /silent /install" -Verb RunAs -Wait; Remove-Item $Path\$Installer
$Path = "%ProgramFiles%\WinRAR"; $Installer = "rarreg.key"; $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest "https://gist.githubusercontent.com/MuhammadSaim/de84d1ca59952cf1efaa8c061aab81a1/raw/ca31cbda01412e85949810d52d03573af281f826/rarreg.key" -OutFile $Path\$Installer;
