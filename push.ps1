$nugetpkgs = Get-ChildItem '.\_packaged_output' -Recurse | ?{$_.name -match "nupkg"} | select
foreach ($nugetpkg in $nugetpkgs) {
  nuget push $($nugetpkg.FullName) -source http://www.myget.org/F/uppercut
}