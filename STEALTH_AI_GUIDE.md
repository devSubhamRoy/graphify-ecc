# 🥷 Universal Stealth AI Architecture (Graphify + ECC)

> **Zero Git Footprint. Full AI Capabilities. Any IDE.**

This workflow enables complete **Graphify Knowledge Graph** and **Everything Claude Code (ECC)** skills, workflows, and agents inside any project codebase while guaranteeing **0% risk of pushing AI configs or skills to GitHub, GitLab, or remote Git repositories**.

---

## 🔒 How Stealth Mode Works (Under the Hood)

Standard `.gitignore` files are committed and pushed to remote repositories, which exposes that AI tools are configured. 

Instead, this system uses **`.git/info/exclude`** (Local Git Private Exclude):
1. **100% Local**: `.git/info/exclude` lives only on your local machine and is **never** committed or pushed.
2. **Invisible in Commits**: `git status`, `git add .`, and `git push` completely ignore `.agents/`, `graphify-out/`, `.ecc/`, `.cursor/`, `.claude/`, etc.
3. **Full IDE Access**: Your local AI agent (Antigravity, Cursor, Claude Code, etc.) reads all `.agents/skills/` natively with zero restrictions.

---

## 🚀 One-Line Execution

To activate in any new or existing repository:

### Windows (PowerShell):
```powershell
irm https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-stealth.ps1 | iex
```
*(Or run locally: `.\scripts\ai-stealth.ps1`)*

### macOS / Linux / Git Bash:
```bash
curl -fsSL https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-stealth.sh | bash
```
*(Or run locally: `./scripts/ai-stealth.sh`)*

---

## 🎛️ Interactive Selection Menu

When the script runs, it interactively prompts you:

```text
Select your IDE / AI Agent:
  [1] Google Antigravity (Default)
  [2] Claude Code
  [3] Cursor IDE
  [4] Codex
  [5] OpenCode
  [6] Gemini CLI
  [7] Zed
  [8] Kimi Code

Select ECC Profile to install:
  [1] Developer Profile (Recommended: TDD, Code Review, Testing, Git - 9 modules)
  [2] Full Profile (All 26 modules: DevOps, Docker, K8s, ML, 290+ skills)
  [3] Minimal Profile (Low-context core workflows)
```

---

## 🧹 Complete AI Wipe (Zero Traces)

Whenever you want to delete all generated AI files, graphs, and skill configurations:

### Windows (PowerShell):
```powershell
.\scripts\ai-clean.ps1
```

### macOS / Linux:
```bash
./scripts/ai-clean.sh
```
