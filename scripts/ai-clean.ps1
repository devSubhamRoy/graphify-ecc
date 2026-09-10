# ==========================================
# AI Stealth Self-Destruct / Clean Script
# ==========================================

Write-Host ""
Write-Host "Wiping all AI footprints from current project..." -ForegroundColor Yellow

$targets = @(
    "graphify-out",
    ".graphify",
    ".ecc",
    "ecc.config.js",
    "ecc.config.json"
)

foreach ($target in $targets) {
    if (Test-Path $target) {
        Remove-Item -Recurse -Force -Path $target -ErrorAction SilentlyContinue
        Write-Host "   [DELETED] $target" -ForegroundColor Red
    }
}

# Clean temp logs if any
Get-ChildItem -Path . -Filter "*.agent-log" -Recurse -ErrorAction SilentlyContinue | Remove-Item -Force

Write-Host ""
Write-Host "Project is completely clean! Zero AI traces remaining." -ForegroundColor Green
Write-Host ""
