#!/usr/bin/env pwsh

$token = az account get-access-token
$token | Out-File -FilePath "test.txt"