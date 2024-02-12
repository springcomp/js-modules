ls src/ |% { $_.Name } |% {
	if (test-path -path "src/$_/run.ps1") {
		pushd "./src/$_"
		Write-Host $PWD.Path -ForegroundColor Green
		. ./run.ps1
		popd
	}
}