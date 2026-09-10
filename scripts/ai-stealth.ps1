# ==========================================
# Universal Stealth AI Setup (Graphify + ECC)
# ==========================================

Write-Host ""
Write-Host "[1/4] Enforcing Local Stealth Git-Ignore..." -ForegroundColor Cyan

# 1. Local Git private ignore (.git/info/exclude) update (Never committed to GitHub)
if (Test-Path ".git") {
    $excludePath = ".git/info/exclude"
    $ignoreEntries = @(
        "graphify-out/",
        ".graphify/",
        ".ecc/",
        "ecc.config.*",
        "*.agent-log",
        "ai-stealth.ps1",
        "ai-clean.ps1",
        "ai-stealth.sh",
        "ai-clean.sh",
        "STEALTH_AI_GUIDE.md"
    )
    
    if (-not (Test-Path ".git/info")) {
        New-Item -ItemType Directory -Path ".git/info" -Force | Out-Null
    }
    
    $existing = if (Test-Path $excludePath) { Get-Content $excludePath } else { @() }
    foreach ($entry in $ignoreEntries) {
        if ($existing -notcontains $entry) {
            Add-Content -Path $excludePath -Value $entry
        }
    }
    # Untrack if previously committed/staged
    git rm -r --cached graphify-out/ 2>$null | Out-Null
    Write-Host "   [OK] Local Git stealth ignore active (Zero trace in repo commits)" -ForegroundColor Green
} else {
    Write-Host "   [INFO] No .git folder found. Skipping git-exclude." -ForegroundColor Yellow
}

# 2. Update and Run Graphify (Zero-cost local AST mode)
Write-Host ""
Write-Host "[2/4] Updating & Running Graphify (Knowledge Graph)..." -ForegroundColor Cyan
try {
    pip install --upgrade graphifyy --quiet 2>$null
    graphify . --code-only
    Write-Host "   [OK] Graphify knowledge graph generated in graphify-out/" -ForegroundColor Green
} catch {
    Write-Host "   [WARN] Graphify run failed or Python/pip not present." -ForegroundColor Yellow
}

# 3. Setup ECC Agent Harness
Write-Host ""
Write-Host "[3/4] Initializing Latest ECC Harness..." -ForegroundColor Cyan
try {
    npx -y ecc-universal@latest setup --yes 2>$null
    Write-Host "   [OK] ECC Agent Harness configured successfully." -ForegroundColor Green
} catch {
    Write-Host "   [WARN] ECC setup encountered an error." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "==================================================" -ForegroundColor Green
Write-Host "AI Stealth Mode Active! Ready for development." -ForegroundColor Green
Write-Host "To wipe all traces later, run: .\scripts\ai-clean.ps1" -ForegroundColor Gray
Write-Host "==================================================" -ForegroundColor Green
Write-Host ""
