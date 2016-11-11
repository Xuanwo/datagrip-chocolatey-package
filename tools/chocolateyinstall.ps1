$packageName= 'datagrip'
$installerType = 'EXE'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$version    = '2016.2.6'
$url        = "https://download.jetbrains.com/datagrip/datagrip-$version.exe"
$silentArgs = '/S'
$validExitCodes = @(0)
$checksum   = '7dcd1d9e70e6786aee40ffe3258fafb47d64d225249b973bb59565427459d826'
$checksumType = 'sha256'
$fileFullPath = "$toolsDir\datagrip-$version.exe"

Get-ChocolateyWebFile -PackageName "$packageName" -FileFullPath "$fileFullPath" -Url "$url"
Get-ChecksumValid -File "$fileFullPath" -CheckSum "$checksum" -ChecksumType "$checksumType"
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
