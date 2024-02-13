#!/bin/env pwsh
if ($PSVersionTable.Platform -ne "Unix"){
	Write-Host "This example requires Linux" -Foregroundcolor Red
}
else {
	pushd src/ && npm install && npm run build && popd
	pushd dist/ && npm install && popd
}