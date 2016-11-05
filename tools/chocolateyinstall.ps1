$packageName= 'datagrip'
$installerType = 'EXE'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$version    = '2016.2.5'
$url        = "https://download.jetbrains.com/datagrip/datagrip-$version.exe"
$silentArgs = '/S'
$validExitCodes = @(0)
$checksum   = '6f8fa8477010d3d49e61b10844876db2df1ec0f852fdaf7cbd9aec167e37214d'
$checksumType = 'sha256'
$fileFullPath = "$toolsDir\datagrip-$version.exe"

Get-ChocolateyWebFile -PackageName "$packageName" -FileFullPath "$fileFullPath" -Url "$url"
Get-ChecksumValid -File "$fileFullPath" -CheckSum "$checksum" -ChecksumType "$checksumType"
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
