$packageName= 'datagrip'
$installerType = 'EXE'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$version    = '2016.2.6'
$url        = "https://download.jetbrains.com/datagrip/datagrip-$version.exe"
$silentArgs = '/S'
$validExitCodes = @(0)
$checksum   = 'c65ef81e7c178d6e0f6fc4c7d55687a474e7c4bd0e2a94bd3de541ee66daff4a'
$checksumType = 'sha256'
$fileFullPath = "$toolsDir\datagrip-$version.exe"

Get-ChocolateyWebFile -PackageName "$packageName" -FileFullPath "$fileFullPath" -Url "$url"
Get-ChecksumValid -File "$fileFullPath" -CheckSum "$checksum" -ChecksumType "$checksumType"
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
