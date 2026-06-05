param(
    [switch]$Commit,
    [switch]$Push,
    [string]$Message = "Update lecture notes"
)

$ErrorActionPreference = "Stop"

$RepoRoot = Split-Path -Parent $PSScriptRoot
$SourcesPath = Join-Path $RepoRoot "sources.json"

if (-not (Test-Path -LiteralPath $SourcesPath)) {
    throw "Missing sources.json at $SourcesPath"
}

$Sources = Get-Content -Raw -LiteralPath $SourcesPath | ConvertFrom-Json

foreach ($Note in $Sources.notes) {
    if (-not (Test-Path -LiteralPath $Note.source_path)) {
        throw "Source not found: $($Note.source_path)"
    }

    $Destination = Join-Path $RepoRoot $Note.repository_path
    $DestinationDir = Split-Path -Parent $Destination
    New-Item -ItemType Directory -Force -Path $DestinationDir | Out-Null

    Copy-Item -LiteralPath $Note.source_path -Destination $Destination -Force
    $Hash = (Get-FileHash -LiteralPath $Destination -Algorithm SHA256).Hash.ToLowerInvariant()
    Write-Host "Updated $($Note.repository_path) sha256=$Hash"
}

if ($Commit) {
    git -C $RepoRoot add README.md sources.json notes scripts
    $Status = git -C $RepoRoot status --porcelain

    if ($Status) {
        git -C $RepoRoot commit -m $Message
    } else {
        Write-Host "No changes to commit."
    }
}

if ($Push) {
    git -C $RepoRoot push
}
