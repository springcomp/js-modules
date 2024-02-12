ls ./ |% { $_.Name } |% {
	if (test-path "./$_/run.ps1") {
		pushd "./$_"
		Write-Host $PWD.Path -ForegroundColor Yellow
		. ./run.ps1
		popd
	}
}
