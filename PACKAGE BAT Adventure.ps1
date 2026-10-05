$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$zipPath = Join-Path $root 'BAT-Insurance-Adventure.zip'
$relativePaths = @(
    'index.html',
    'app.css',
    'app.js',
    'BAT.png',
    'Insurance Training Manual.pdf',
    'START BAT Adventure.cmd',
    'BAT Adventure.cmd',
    'PACKAGE BAT Adventure.cmd',
    'START HERE.txt',
    'PACKAGE BAT Adventure.ps1',
    'assets',
    'data'
)
$paths = foreach ($relativePath in $relativePaths) {
    $path = Join-Path $root $relativePath
    if (-not (Test-Path -LiteralPath $path)) {
        throw "Cannot create package: required app file or folder is missing: $relativePath"
    }
    $path
}
Compress-Archive -Path $paths -DestinationPath $zipPath -CompressionLevel Optimal -Force
Write-Output "Created portable app package: $zipPath"
