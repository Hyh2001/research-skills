---
name: paper-reading
description: Read and analyze academic papers by user-specified understanding depth. Use when the user gives a paper title, DOI, arXiv link, PDF, or local paper file and asks Codex to read it, answer level-specific comprehension questions, evaluate contribution/assumptions/limitations, or generate a structured paper reading note.
---

# Paper Reading

## Overview

Use this skill to read one academic paper at a chosen depth level and produce a reusable reading note. The user provides a paper name or paper file/link plus the level of understanding they want to reach.

Treat paper reading as layered. Read only the parts needed for the requested level unless the user asks for a deeper pass. If a requested claim cannot be verified from the parts read, mark it as uncertain rather than filling it in.

## Inputs

Collect these inputs if missing:

- Paper identifier: title, DOI, arXiv link, publisher URL, PDF path, or uploaded/local file.
- Target level: `1`, `2`, `3`, or `4`.
- Optional focus: method, theory, experiments, implementation, relation to the user's project, or related papers.

If the user gives only a paper name, search the web for the paper and verify the title/authors/venue before reading. Prefer official paper pages, arXiv, DOI/publisher pages, conference proceedings, or author project pages. Do not invent bibliographic metadata.

## Reading Levels

### Level 1: Big Picture

Goal: understand what the paper is trying to do and whether it is worth deeper reading.

Read:

- Abstract
- Introduction
- Problem statement or task formulation
- Pipeline/overview figure if useful
- Conclusion or discussion if needed

Answer:

1. What problem does the paper solve?
2. Why does the problem matter?
3. Why is the problem hard?
4. What is the method?
5. What are the method's merits?
6. Is the method new, and does it actually address the stated problem?
7. Which references look worth reading next?

### Level 2: Method Structure

Goal: identify the method components and understand how the system works at the module level.

Read everything from Level 1 plus:

- Method overview
- Main method section
- Architecture/pipeline figures
- Algorithm boxes or key equations at a structural level

Answer:

1. What are the main method components?
2. What is the input and output of each component?
3. How do the components connect? Include a block diagram in Mermaid when useful.
4. What is the main assumption?
5. Under that assumption, what are the main merits?
6. What part of the design leads to those merits?

### Level 3: Deep Contribution And Evidence

Goal: understand the contributed part at both intuition and math/technical levels, and judge whether the evidence supports the claims.

Read everything from Levels 1-2 plus:

- Contributed method details
- Key derivations, losses, objectives, or algorithms
- Experimental setup
- Main results
- Ablations and limitations if present

Answer:

1. What is the paper's core contribution at the intuition level?
2. What is the core contribution at the math or technical level?
3. Do the results justify the method?
4. Are the experiments sufficient for the claims?
5. Which claims are well-supported, weakly-supported, or unsupported?
6. What are the disadvantages or failure modes?
7. What scenarios are most suitable for this type of method?
8. How could the work be improved?

### Level 4: Implementation Or Comparison Detail

Goal: understand enough detail to implement the method, reproduce it, or compare directly against the user's work.

Read the full paper and any necessary appendix/supplement/code documentation. If code or supplementary material is unavailable, say so.

Answer everything from Levels 1-3 plus:

1. What exact algorithmic steps are needed for implementation?
2. What data, models, hyperparameters, losses, and training/evaluation protocols are required?
3. Which details are underspecified?
4. What would be needed to reproduce the experiments?
5. How should this paper be compared against the user's work?

## Questions Required At Every Level

Always answer these, even for Level 1:

1. What is the contribution?
2. What are the assumptions?
3. How can the work be improved?

Keep the answer calibrated to the level. For example, Level 1 assumptions may be high-level problem assumptions; Level 3 assumptions should include technical and experimental assumptions.

## Reading Note Format

Generate a final note in Markdown using this structure:

```markdown
# Paper Reading: <Paper Title>

## Metadata
- Title:
- Authors:
- Year:
- Venue:
- Link/DOI:
- Reading level:
- Reading scope:

## One-Sentence Summary

## Contribution

## Assumptions

## Problem And Motivation

## Method

## Evidence And Results

## Merits

## Limitations And Failure Modes

## Suitable Scenarios

## Possible Improvements

## References Worth Reading Next

## Open Questions
```

For Level 2 or above, add a `## Method Components` section. For Level 3 or above, add a `## Claim-Evidence Check` section. For Level 4, add a `## Reproduction / Implementation Checklist` section.

## Evidence And Safety Rules

- State which sections of the paper were read.
- Do not claim full-paper understanding unless Level 4 or the full paper was actually read.
- Do not invent experimental numbers, citations, equations, or implementation details.
- Separate the paper's claims from your interpretation.
- If the paper is inaccessible, ask the user for a PDF or use accessible metadata only and clearly mark the limitation.
- If the paper belongs to a field the user has not reviewed, suggest doing a literature review first before deep-reading many individual papers.
