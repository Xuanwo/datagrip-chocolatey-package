$packageName= 'datagrip'
$installerType = 'EXE'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$version    = '2016.3.4'
$url        = "https://download.jetbrains.com/datagrip/datagrip-$version.exe"
$silentArgs = '/S'
$validExitCodes = @(0)
$checksum   = 'a44e3067f69c6b3322bd4b5b27940db1c17a2a536ce95c96981a0cfb9cb97179'
$checksumType = 'sha256'
$fileFullPath = "$toolsDir\datagrip-$version.exe"

Get-ChocolateyWebFile -PackageName "$packageName" -FileFullPath "$fileFullPath" -Url "$url"
Get-ChecksumValid -File "$fileFullPath" -CheckSum "$checksum" -ChecksumType "$checksumType"
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
