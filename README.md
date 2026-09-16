<div align=center>

# 🥷 Universal Stealth AI Harness
### Graphify Knowledge Graph + Everything Claude Code (ECC)

**Supercharge ANY IDE with 120+ AI Skills, Code Graphs & Autonomous Workflows — with ZERO Git trace.**

---

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20macOS%20%7C%20Linux-9cf)](https://github.com/devSubhamRoy/graphify-ecc)
[![IDEs](https://img.shields.io/badge/IDEs-Antigravity%20%7C%20Cursor%20%7C%20Claude%20Code%20%7C%20Codex-success)](https://github.com/devSubhamRoy/graphify-ecc)
[![Git Trace](https://img.shields.io/badge/Git%20Trace-0%25%20(Pure%20Stealth)-brightgreen)](https://github.com/devSubhamRoy/graphify-ecc)

<br>

[⚡ Quickstart](#-quickstart-choose-your-method) • [🖥️ Interactive CLI](#%EF%B8%8F-interactive-setup-preview) • [💻 Supported IDEs](#-supported-ides--features) • [🧹 Cleanup](#-cleanup--self-destruct) • [🔒 Why Stealth?](#-why-stealth-mode)

</div>

---

## 📌 What is This?

When working on company, client, or personal repositories, you want **top-tier AI tools** (Knowledge Graphs, TDD workflows, autonomous planning, automated code reviews) **without polluting Git history**.

> **The Solution:** This harness configures the full AI suite locally in your workspace and injects private .git/info/exclude rules so **NOTHING is ever committed or pushed to GitHub / GitLab**.

---

## ⚡ Quickstart (Choose Your Method)

### 🔹 Method 1: Instant Online 1-Liner (No Cloning Required)

Just open your project terminal and run:

#### 🪟 Windows (PowerShell):
`powershell
irm https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-stealth.ps1 | iex
`

#### 🍎 macOS / 🐧 Linux / Git Bash:
`ash
curl -fsSL https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-stealth.sh | bash
`

---

### 🔹 Method 2: Local Setup (Clone & Run Offline)

If you prefer to keep the scripts on your machine and run them locally:

#### Step 1: Clone the Repository
`ash
git clone https://github.com/devSubhamRoy/graphify-ecc.git
`

#### Step 2: Run in Any Project Folder

**On Windows (PowerShell):**
`powershell
# Run from your project directory (point to cloned scripts folder)
powershell -ExecutionPolicy Bypass -File C:\path\to\graphify-ecc\scripts\ai-stealth.ps1
`

**On macOS / Linux (Bash):**
`ash
# Run from your project directory
bash /path/to/graphify-ecc/scripts/ai-stealth.sh
`

---

### 🔹 Method 3: Direct Project Copy

You can also copy the scripts/ folder directly into your project root:
`	ext
your-project/
├── scripts/
│   ├── ai-stealth.ps1
│   ├── ai-clean.ps1
│   ├── ai-stealth.sh
│   └── ai-clean.sh
`
Then run locally:
* **Windows:** .\scripts\ai-stealth.ps1
* **Linux/Mac:** ./scripts/ai-stealth.sh

---

## 🖥️ Interactive Setup Preview

When the script runs, it interactively asks you to select your IDE and profile:

`	ext
==========================================================
   UNIVERSAL STEALTH AI SETUP (Graphify + ECC Engine)    
==========================================================

[1/4] Enforcing Local Stealth Git-Ignore...
   [OK] Local Git stealth exclude configured.
   [OK] AI artifacts are 100% hidden from Git commits & pushes.

[2/4] Select your IDE / AI Agent:
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

[3/4] Running Graphify (Knowledge Graph)...
   [OK] AST knowledge graph generated in graphify-out/

[4/4] Installing ECC Skills...
   [OK] 124+ Skills & 94 Workflows configured successfully!
`

---

## 💻 Supported IDEs & Features

| IDE / AI Tool | Adapter Target | Installed Assets |
| :--- | :---: | :--- |
| 🪐 **Google Antigravity** | ntigravity | Native .agents/skills (124+ skills), rules, workflows & subagents |
| 🟣 **Claude Code** | claude | Marketplace plugin, prompts, rules & unified memory |
| ⚡ **Cursor IDE** | cursor | .cursor/agents, rules & workflow definitions |
| 🟢 **Codex** | codex | Native Codex plugin & role definitions |
| 🪟 **OpenCode / Zed / Gemini / Kimi** | opencode / zed | Project-local adapters & workflow commands |

---

## 🧹 Cleanup / Self-Destruct

Wipe all generated AI files, graphs, and skill folders before Git commits or project handover:

### 🌐 Online 1-Liner Cleanup:
* **Windows (PowerShell):**
  `powershell
  irm https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-clean.ps1 | iex
  `
* **macOS / Linux / Git Bash:**
  `ash
  curl -fsSL https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-clean.sh | bash
  `

### 💻 Local Cleanup:
* **Windows:** .\scripts\ai-clean.ps1
* **Linux / macOS:** ./scripts/ai-clean.sh

---

## 🔒 Why Stealth Mode?

| Feature | Standard .gitignore | 🥷 Stealth Mode (.git/info/exclude) |
| :--- | :---: | :---: |
| **Hides files locally** | ✅ Yes | ✅ Yes |
| **Creates Git file diffs** | ❌ **YES** (Modifies .gitignore) | ✅ **ZERO diffs** (Repo remains pristine) |
| **Visible to Clients / Teammates** | ❌ **YES** (Committed in repo history) | ✅ **100% INVISIBLE** (Never pushed) |
| **Works with git add .** | ✅ Yes | ✅ Yes (Completely ignored by Git) |

---

## 🚀 Pro-Tip: Permanent Terminal Aliases

Add these functions to your PowerShell Profile (
otepad C:\Users\Subham\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1):

`powershell
function init-ai {
    irm https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-stealth.ps1 | iex
}

function clean-ai {
    irm https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-clean.ps1 | iex
}
`

Now in **any project**, just type:
* init-ai ➔ Setup stealth knowledge graph & skills.
* clean-ai ➔ Wipe all AI traces.

---

## 📄 License
MIT License © [devSubhamRoy](https://github.com/devSubhamRoy)
