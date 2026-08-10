---
name: literature-review
description: Guided academic literature review workflow for mapping a research field from user-provided keywords or phrases. Use when Codex needs to search for relevant papers, ask the user to select seed papers, build a 30-40 paper corpus, identify highly cited methods, classify methodological schools, compare strengths and weaknesses, refine search terms, and synthesize the field using abstracts and introductions.
---

# Literature Review

## Overview

Use this skill to run an iterative literature review, starting from the user's keywords and ending with a structured map of methods, schools of thought, important papers, and field-level research concerns.

Default to the user's language. If the user writes in Chinese, answer in Chinese unless they request otherwise.

## Evidence Rules

- Search the web or scholarly indexes for current metadata and source links. Prefer Google Scholar-like indexes when available, then Semantic Scholar, OpenAlex, Crossref, publisher pages, arXiv, PubMed, ACM, IEEE, SSRN, or institutional repositories as appropriate.
- Do not invent papers, authors, citations, venues, abstracts, introductions, citation counts, or claims.
- Keep a working bibliography with title, authors, year, venue, DOI or URL, paper type, citation signal when available, and reason for inclusion.
- Read only abstracts and introductions unless the user asks for deeper reading.
- Treat citation counts as approximate and source-dependent. Say which source they came from when using them to rank importance.
- Separate observed evidence from inference. Mark uncertain classifications as tentative.

## Workflow

### 1. Collect Search Intent

Ask the user for several keywords or one phrase describing the literature sector they care about if they have not provided it. Also ask for optional constraints only when they matter: discipline, publication years, application domain, methods to include or exclude, and preferred language.

### 2. Find Candidate Seed Papers

Search for a small candidate set of relevant papers, including review papers or survey papers when possible. Present 6-10 candidates with:

- Title, authors, year, venue
- Short abstract-level reason it may fit
- Link or DOI
- Citation or influence signal when available

Ask the user to choose papers that match their intended field. If the user rejects all or too few are suitable, revise the query and repeat this step until the user can select at least three relevant seed papers.

### 3. Build A 30-40 Paper Corpus

Using the selected seed papers, gather 30-40 related papers. Use backward citation chasing from references, forward citation chasing from citing papers, and review-paper bibliographies. Prioritize:

- Highly cited or foundational method papers
- Review, survey, benchmark, or taxonomy papers
- Papers that represent distinct methodological schools
- Papers repeatedly cited by the selected seed papers
- Recent papers that show current directions

Deduplicate aggressively. Exclude papers that are only weakly related, lack accessible metadata, or do not contribute to method comparison.

### 4. First Map From Abstracts And Introductions

After reading abstracts and introductions for the corpus, answer:

1. 这个领域内最常被引用的方法有哪些？
2. 这些方法可以分成哪些派别？
3. 每个派别的主要特色是什么，包括优点和缺点？

Include a compact evidence table that maps each claim to representative papers.

### 5. Classify Important Papers

Find the most frequently cited and most field-defining papers for each school. Classify them by school. Within each school, sort papers chronologically from earliest to latest.

Use this format unless the user asks otherwise:

```text
派别 A:
YYYY - Paper title - Why it matters
YYYY - Paper title - Why it matters

派别 B:
YYYY - Paper title - Why it matters
```

### 6. Read Each School Chronologically

For one school at a time, read the abstracts and introductions in chronological order. For each school, summarize:

1. 这一派主要的诉求、方法特色和优点。
2. 这一派论文对其它派别的批评。
3. 基于当前理解，应该如何修正搜索关键词。

After each school-level pass, refine the paper corpus: add newly discovered important papers, remove papers that now appear peripheral, and explain the changes briefly.

### 7. Final Field Synthesis

After revising the corpus, answer:

1. 这个领域内大家认为重要的关键问题有哪些？
2. 有哪些特性是大家重视的优点？有哪些特性是大家在意的缺点？
3. 这些优点与缺点通常在哪些应用场合会比较被重视？在哪些应用场合比较不会被重视？

End with:

- The final bibliography grouped by school and sorted chronologically
- The final refined search keywords
- Any remaining uncertainty or papers that would require full-text reading

## User Checkpoints

Always stop for user selection after the candidate seed-paper step. Do not proceed to the 30-40 paper corpus until the user has selected at least three seed papers or explicitly authorizes Codex to choose seeds on their behalf.

During long reviews, use concise progress updates that state which corpus-building or synthesis stage is underway and what has changed.
