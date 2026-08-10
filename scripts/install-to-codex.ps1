param(
    [string]$Source = (Resolve-Path "$PSScriptRoot\..\skills").Path,
    [string]$Destination = "$env:USERPROFILE\.codex\skills"
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path -LiteralPath $Source)) {
    throw "Source skills directory does not exist: $Source"
}

New-Item -ItemType Directory -Force -Path $Destination | Out-Null

$skills = Get-ChildItem -LiteralPath $Source -Directory -Force |
    Where-Object { Test-Path -LiteralPath (Join-Path $_.FullName "SKILL.md") }

foreach ($skill in $skills) {
    $target = Join-Path $Destination $skill.Name
    if (Test-Path -LiteralPath $target) {
        Remove-Item -LiteralPath $target -Recurse -Force
    }
    Copy-Item -LiteralPath $skill.FullName -Destination $target -Recurse -Force
    Write-Host "Installed $($skill.Name)"
}

Write-Host "Done. Restart Codex to reload installed skills."
