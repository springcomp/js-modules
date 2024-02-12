ls src/ |% { $_.Name } |% {
	if (test-path -path "src/$_/build.ps1") {
		pushd "./src/$_"
		Write-Host $PWD.Path -ForegroundColor Magenta
		. ./build.ps1
		popd
	}
}