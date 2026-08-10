param(
    [string]$Source = "$env:USERPROFILE\.codex\skills",
    [string]$Destination = (Resolve-Path "$PSScriptRoot\..\skills").Path
)

$ErrorActionPreference = "Stop"

$excluded = @(".system")

if (-not (Test-Path -LiteralPath $Source)) {
    throw "Source skills directory does not exist: $Source"
}

New-Item -ItemType Directory -Force -Path $Destination | Out-Null

$skills = Get-ChildItem -LiteralPath $Source -Directory -Force |
    Where-Object { $excluded -notcontains $_.Name }

foreach ($skill in $skills) {
    $target = Join-Path $Destination $skill.Name
    if (Test-Path -LiteralPath $target) {
        Remove-Item -LiteralPath $target -Recurse -Force
    }
    Copy-Item -LiteralPath $skill.FullName -Destination $target -Recurse -Force
    Write-Host "Synced $($skill.Name)"
}

Write-Host "Done. Review changes with: git status --short"
