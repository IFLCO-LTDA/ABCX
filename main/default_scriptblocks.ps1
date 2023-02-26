# error warning
$errorWarning = {
    Write-Host 'Error Warning' -ForegroundColor Red -BackgroundColor DarkBlue
}

# make directory
$appMkdir = {
$programFiles = $programFiles | Resolve-Path | Convert-Path
$testPath = $programFiles | Test-Path
if ($testPath -match $true) {
    $programFiles = $programFiles
} else {&$errorWarning}
New-Item -Name $appName -Path $programFiles -ItemType Directory

$AppPathDirectory = Write-Output -InputObject ($programFiles+'\'+$appName) | Resolve-Path | Convert-Path
$testPath = $AppPathDirectory | Test-Path
if ($AppPathDirectory -match $true) {
    $AppPathDirectory = $AppPathDirectory
} else {&$errorWarning}
}
