# ==========================================================
# Universal Interactive Stealth AI Setup (Graphify + ECC)
# ==========================================================

param (
    [string]$Target = "",
    [string]$Profile = ""
)

Write-Host ""
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "   UNIVERSAL STEALTH AI SETUP (Graphify + ECC Engine)    " -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host ""

# ---------------------------------------------------------
# Step 1: Enforce Local Stealth Git-Ignore (.git/info/exclude)
# ---------------------------------------------------------
Write-Host "[1/4] Enforcing Local Stealth Git-Ignore..." -ForegroundColor Cyan

$stealthEntries = @(
    "graphify-out/",
    ".graphify/",
    ".agents/",
    ".agent/",
    ".ecc/",
    ".claude/",
    ".cursor/",
    ".gemini/",
    ".codex/",
    ".kimi-code/",
    ".zed/",
    "ecc.config.*",
    "*.agent-log",
    "ai-stealth.ps1",
    "ai-clean.ps1",
    "ai-stealth.sh",
    "ai-clean.sh",
    "scripts/ai-stealth.ps1",
    "scripts/ai-clean.ps1",
    "scripts/ai-stealth.sh",
    "scripts/ai-clean.sh",
    "STEALTH_AI_GUIDE.md"
)

if (Test-Path ".git") {
    $excludePath = ".git/info/exclude"
    if (-not (Test-Path ".git/info")) {
        New-Item -ItemType Directory -Path ".git/info" -Force | Out-Null
    }
    
    $existing = if (Test-Path $excludePath) { Get-Content $excludePath } else { @() }
    $addedCount = 0
    foreach ($entry in $stealthEntries) {
        if ($existing -notcontains $entry) {
            Add-Content -Path $excludePath -Value $entry
            $addedCount++
        }
    }

    # Untrack if previously committed or staged without deleting local files
    git rm -r --cached .agents graphify-out .ecc .claude .cursor .gemini .codex .kimi-code .zed 2>$null | Out-Null
    
    Write-Host "   [OK] Local Git stealth exclude configured ($addedCount entries added)." -ForegroundColor Green
    Write-Host "   [OK] AI artifacts are 100% hidden from Git commits & pushes." -ForegroundColor Green
} else {
    Write-Host "   [INFO] No .git folder found. Stealth exclude will activate once Git is initialized." -ForegroundColor Yellow
}

# ---------------------------------------------------------
# Step 2: Interactive IDE & Profile Selection
# ---------------------------------------------------------
Write-Host ""
Write-Host "[2/4] IDE / AI Harness Configuration..." -ForegroundColor Cyan

$targetMap = @{
    "1" = "antigravity"
    "2" = "claude"
    "3" = "cursor"
    "4" = "codex"
    "5" = "opencode"
    "6" = "gemini"
    "7" = "zed"
    "8" = "kimi"
}

if (-not $Target) {
    Write-Host ""
    Write-Host "Select your IDE / AI Agent:" -ForegroundColor Yellow
    Write-Host "  [1] Google Antigravity (Default)" -ForegroundColor White
    Write-Host "  [2] Claude Code" -ForegroundColor White
    Write-Host "  [3] Cursor IDE" -ForegroundColor White
    Write-Host "  [4] Codex" -ForegroundColor White
    Write-Host "  [5] OpenCode" -ForegroundColor White
    Write-Host "  [6] Gemini CLI" -ForegroundColor White
    Write-Host "  [7] Zed" -ForegroundColor White
    Write-Host "  [8] Kimi Code" -ForegroundColor White
    
    $targetChoice = Read-Host "Enter number (1-8) [Default: 1]"
    if ([string]::IsNullOrWhiteSpace($targetChoice) -or -not $targetMap.ContainsKey($targetChoice)) {
        $targetChoice = "1"
    }
    $Target = $targetMap[$targetChoice]
}

$profileMap = @{
    "1" = "developer"
    "2" = "full"
    "3" = "minimal"
}

if (-not $Profile) {
    Write-Host ""
    Write-Host "Select ECC Profile to install:" -ForegroundColor Yellow
    Write-Host "  [1] Developer Profile (Recommended: TDD, Code Review, Testing, Git - 9 modules)" -ForegroundColor White
    Write-Host "  [2] Full Profile (All 26 modules: DevOps, Docker, K8s, ML, 290+ skills)" -ForegroundColor White
    Write-Host "  [3] Minimal Profile (Low-context core workflows)" -ForegroundColor White
    
    $profileChoice = Read-Host "Enter number (1-3) [Default: 1]"
    if ([string]::IsNullOrWhiteSpace($profileChoice) -or -not $profileMap.ContainsKey($profileChoice)) {
        $profileChoice = "1"
    }
    $Profile = $profileMap[$profileChoice]
}

Write-Host ""
Write-Host "   Selected Target : $Target" -ForegroundColor Green
Write-Host "   Selected Profile: $Profile" -ForegroundColor Green

# ---------------------------------------------------------
# Step 3: Run Graphify (Local AST Knowledge Graph)
# ---------------------------------------------------------
Write-Host ""
Write-Host "[3/4] Updating & Running Graphify (Knowledge Graph)..." -ForegroundColor Cyan
try {
    pip install --upgrade graphifyy --quiet 2>$null
    graphify . --code-only
    Write-Host "   [OK] Graphify knowledge graph generated in graphify-out/" -ForegroundColor Green
} catch {
    Write-Host "   [WARN] Graphify run skipped or Python/pip not present." -ForegroundColor Yellow
}

# ---------------------------------------------------------
# Step 4: Install ECC for Selected IDE
# ---------------------------------------------------------
Write-Host ""
Write-Host "[4/4] Installing ECC ($Profile profile for $Target)..." -ForegroundColor Cyan
try {
    npx -y ecc-universal@latest install --profile $Profile --target $Target
    Write-Host "   [OK] ECC configured successfully for $Target!" -ForegroundColor Green
} catch {
    Write-Host "   [WARN] ECC installation encountered an error." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "==========================================================" -ForegroundColor Green
Write-Host " AI Stealth Mode Active! Ready for development.           " -ForegroundColor Green
Write-Host " Target IDE: $Target | Profile: $Profile                  " -ForegroundColor Green
Write-Host " --------------------------------------------------------- " -ForegroundColor Gray
Write-Host " To wipe all AI traces anytime, run: .\scripts\ai-clean.ps1" -ForegroundColor Gray
Write-Host "==========================================================" -ForegroundColor Green
Write-Host ""
