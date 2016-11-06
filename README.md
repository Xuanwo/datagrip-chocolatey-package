# datagrip-chocolatey-package
[![Build status](https://ci.appveyor.com/api/projects/status/2v02prqlnk534eft?svg=true)](https://ci.appveyor.com/project/Xuanwo/datagrip-chocolatey-package)

This is the repo for datagrip on chocolatey.

Anyone who want to update the script should modify these places:

- https://github.com/Xuanwo/datagrip-chocolatey-package/blob/master/datagrip.nuspec#L8
- https://github.com/Xuanwo/datagrip-chocolatey-package/blob/master/datagrip.nuspec#L12 (*only if changed*)
- https://github.com/Xuanwo/datagrip-chocolatey-package/blob/master/datagrip.nuspec#L47
- https://github.com/Xuanwo/datagrip-chocolatey-package/blob/master/tools/chocolateyinstall.ps1#L4
- https://github.com/Xuanwo/datagrip-chocolatey-package/blob/master/tools/chocolateyinstall.ps1#L8 (*Get checksum from [here](https://download.jetbrains.com/datagrip/datagrip-2016.2.5.exe.sha256)*)
