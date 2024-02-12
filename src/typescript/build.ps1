ls ./ |% { $_.Name } |% {
	if (test-path "./$_/build.ps1") {
		pushd "./$_"
		Write-Host $PWD.Path -ForegroundColor Yellow
		. ./build.ps1
		popd
	}
}