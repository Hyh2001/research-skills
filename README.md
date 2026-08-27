# Research Skills

A personal collection of Codex research skills for idea evaluation, literature review, paper writing, paper polishing, figure design, and pre-submission review.

This repository is organized so another Codex session can install the skills in the same style as Supervisor-Skills.

## Quick Start

Paste this prompt into Codex or another AI assistant that supports Skills:

```text
Help me install Research Skills from https://github.com/Hyh2001/research-skills with Skills.
```

If you want to install one skill manually with Codex's skill installer, use the GitHub directory URL:

```text
$skill-installer install https://github.com/Hyh2001/research-skills/tree/main/skills/idea-evaluator
```

Repeat with another folder under `skills/` for a specific skill.

## Repository Layout

```text
research-skills/
  README.md
  skills/
    benchmark-paper-template/
    deep-research/
    drawio-reconstruction/
    figure-designer/
    idea-evaluator/
    intro-drafter/
    literature-review/
    material-to-course/
    paper-polish/
    paper-reading/
    paper-writer/
    pre-submission-reviewer/
    tech-paper-template/
    vibe-research-workflow/
  scripts/
    install-to-codex.ps1
    sync-from-codex.ps1
```

## Included Skills

| Skill | Purpose |
| --- | --- |
| `idea-evaluator` | Evaluate early research ideas for novelty, feasibility, capability fit, and fatal flaws. |
| `literature-review` | Run a guided literature review workflow from search terms to a structured field map. |
| `deep-research` | Conduct survey-grade literature investigation with citation verification and synthesis. |
| `material-to-course` | Turn papers, slides, and notes into a source-grounded curriculum with lessons, practice, and supplemental learning resources. |
| `tech-paper-template` | Build the logical skeleton of a technical paper. |
| `benchmark-paper-template` | Structure benchmark and evaluation papers. |
| `intro-drafter` | Draft or outline a paper Introduction using a six-part logic chain. |
| `paper-writer` | Draft paper prose from user-provided evidence and verified citations. |
| `paper-polish` | Polish academic prose while preserving meaning and calibrating claims. |
| `paper-reading` | Read one paper by a chosen depth level and generate a structured reading note. |
| `pre-submission-reviewer` | Audit a draft before submission across logic, writing, grammar, LaTeX, and figures. |
| `figure-designer` | Design technical paper figures and choose chart/layout strategies. |
| `drawio-reconstruction` | Reconstruct reference diagrams into editable Draw.io files. |
| `vibe-research-workflow` | Guide AI-assisted research workflows across coding, figures, and writing. |

## Maintenance

To refresh this repo from your local global Codex skills folder:

```powershell
.\scripts\sync-from-codex.ps1
```

To install the skills from a local checkout into the current user's global Codex skills folder:

```powershell
.\scripts\install-to-codex.ps1
```

Restart Codex after installing or updating skills so the app can reload them.

## Licensing

Per-skill license files are preserved when present. No repository-wide license has been selected yet; add one before broader redistribution if needed.
