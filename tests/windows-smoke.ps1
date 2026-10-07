$ErrorActionPreference = 'Stop'

if (-not $IsWindows) {
    throw 'Expected a Windows runner.'
}

if ($env:RUNNER_OS -ne 'Windows') {
    throw "Expected RUNNER_OS=Windows, observed '$env:RUNNER_OS'."
}

$systemDirectory = [Environment]::SystemDirectory
if (-not $systemDirectory -or -not (Test-Path -LiteralPath $systemDirectory)) {
    throw 'Windows system directory was not resolved.'
}

Write-Output 'WINDOWS_CLOUD_E2E_OK'
