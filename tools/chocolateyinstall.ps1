$packageName= 'datagrip'
$installerType = 'EXE'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.jetbrains.com/datagrip/datagrip-2016.2.5.exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$checksum   = '6f8fa8477010d3d49e61b10844876db2df1ec0f852fdaf7cbd9aec167e37214d'
$checksumtype = 'sha256'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$checksum" "$checksumtype" -validExitCodes $validExitCodes
