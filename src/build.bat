call "%ProgramFiles(x86)%\Microsoft Visual Studio\2017\Enterprise\Common7\Tools\VsMSBuildCmd.bat"

msbuild xz/project/liblzma.sln /p:Configuration="Release" /p:Platform="x86"
msbuild xz/project/liblzma.sln /p:Configuration="Release" /p:Platform="x64"
msbuild xz/project/liblzma.sln /p:Configuration="Release" /p:Platform="ARM"
msbuild xz/project/liblzma.sln /p:Configuration="Release" /p:Platform="ARM64"

nuget restore ManagedXZLZMA.sln
msbuild ManagedXZLZMA.sln /p:Configuration="Release" /p:Platform="Any CPU"