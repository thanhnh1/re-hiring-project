$AppName = 'site'
$Drive = 'C:\'
$FolderName = $Drive + $AppName
$RootApp = "C:\inetpub\AspNetCoreWebApps"
$FullUri = $RootApp + "\" + $AppName

if (Test-Path $FolderName) {
  Remove-Item $FolderName -Recurse
}

Add-Type -assembly "system.io.compression.filesystem"
[io.compression.zipfile]::ExtractToDirectory('./wwwroot.zip', $FolderName)