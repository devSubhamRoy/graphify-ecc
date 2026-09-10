#!/usr/bin/env bash
# ==========================================
# Universal Stealth AI Setup (Graphify + ECC)
# ==========================================

echo ""
echo "[1/4] Enforcing Local Stealth Git-Ignore..."

if [ -d ".git" ]; then
    excludePath=".git/info/exclude"
    mkdir -p ".git/info"
    
    ignoreEntries=(
        "graphify-out/"
        ".graphify/"
        ".ecc/"
        "ecc.config.*"
        "*.agent-log"
        "ai-stealth.ps1"
        "ai-clean.ps1"
        "ai-stealth.sh"
        "ai-clean.sh"
        "STEALTH_AI_GUIDE.md"
    )
    
    touch "$excludePath"
    for entry in "${ignoreEntries[@]}"; do
        if ! grep -Fxq "$entry" "$excludePath"; then
            echo "$entry" >> "$excludePath"
        fi
    done
    
    git rm -r --cached graphify-out/ 2>/dev/null || true
    echo "   [OK] Local Git stealth ignore active (Zero trace in repo commits)"
else
    echo "   [INFO] No .git folder found. Skipping git-exclude."
fi

echo ""
echo "[2/4] Updating & Running Graphify (Knowledge Graph)..."
pip install --upgrade graphifyy --quiet 2>/dev/null || true
graphify . --code-only || echo "   [WARN] Graphify run failed or Python/pip not present."

echo ""
echo "[3/4] Initializing Latest ECC Harness..."
npx -y ecc-universal@latest setup --yes 2>/dev/null || echo "   [WARN] ECC setup encountered an error."

echo ""
echo "=================================================="
echo "AI Stealth Mode Active! Ready for development."
echo "To wipe all traces later, run: ./scripts/ai-clean.sh"
echo "=================================================="
echo ""
