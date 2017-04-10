$packageName= 'datagrip'
$installerType = 'EXE'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$version    = '2017.1.1'
$url        = "https://download.jetbrains.com/datagrip/datagrip-$version.exe"
$silentArgs = '/S'
$validExitCodes = @(0)
$checksum   = '6aa8f4b0803b67b9a9c4616fe15da8ee51f9488569d98162a41e52e1a5ddb92b'
$checksumType = 'sha256'
$fileFullPath = "$toolsDir\datagrip-$version.exe"

Get-ChocolateyWebFile -PackageName "$packageName" -FileFullPath "$fileFullPath" -Url "$url"
Get-ChecksumValid -File "$fileFullPath" -CheckSum "$checksum" -ChecksumType "$checksumType"
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
