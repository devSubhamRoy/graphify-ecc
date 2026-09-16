# ==========================================================
# Universal AI Clean / Wipe Script (Stealth Cleanup)
# ==========================================================

Write-Host ""
Write-Host "==========================================================" -ForegroundColor Red
Write-Host "             AI STEALTH ARTIFACTS CLEANUP                 " -ForegroundColor Red
Write-Host "==========================================================" -ForegroundColor Red
Write-Host ""

$pathsToClean = @(
    "graphify-out",
    ".graphify",
    ".agents",
    ".agent",
    ".ecc",
    ".claude",
    ".cursor",
    ".gemini",
    ".codex",
    ".kimi-code",
    ".zed",
    "STEALTH_AI_GUIDE.md"
)

$removedCount = 0

foreach ($path in $pathsToClean) {
    if (Test-Path $path) {
        Write-Host "Removing: $path" -ForegroundColor Yellow
        Remove-Item -Path $path -Recurse -Force -ErrorAction SilentlyContinue
        $removedCount++
    }
}

# Remove generated agent log files
Get-ChildItem -Path . -Filter "*.agent-log" -File -Recurse -ErrorAction SilentlyContinue | ForEach-Object {
    Remove-Item $_.FullName -Force -ErrorAction SilentlyContinue
    $removedCount++
}

# Clean exclude file entries if desired
if (Test-Path ".git/info/exclude") {
    $excludePath = ".git/info/exclude"
    $content = Get-Content $excludePath -ErrorAction SilentlyContinue
    $filtered = $content | Where-Object { 
        $_ -notmatch "graphify" -and 
        $_ -notmatch "\.agents" -and 
        $_ -notmatch "\.ecc" -and 
        $_ -notmatch "\.claude" -and 
        $_ -notmatch "\.cursor" -and 
        $_ -notmatch "\.gemini" -and 
        $_ -notmatch "\.codex" -and 
        $_ -notmatch "\.kimi" -and 
        $_ -notmatch "\.zed" -and 
        $_ -notmatch "ai-stealth" -and 
        $_ -notmatch "ai-clean"
    }
    Set-Content -Path $excludePath -Value $filtered -ErrorAction SilentlyContinue
}

Write-Host ""
Write-Host "   [OK] Cleaned $removedCount AI stealth directories/artifacts." -ForegroundColor Green
Write-Host "   [OK] Workspace is back to pristine state with zero AI trace." -ForegroundColor Green
Write-Host ""
