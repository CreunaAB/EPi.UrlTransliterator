$vsVersion = "14.0"
$regKey = "HKLM:\software\Microsoft\MSBuild\ToolsVersions\$vsVersion"
$regProperty = "MSBuildToolsPath"

$msbuildExe = join-path -path (Get-ItemProperty $regKey).$regProperty -childpath "msbuild.exe"

.\NuGet.exe pack EPi.UrlTransliterator.csproj -OutputDirectory "Build" -Build -Properties Configuration=Release461