---
name: material-to-course
description: Turn a supplied set of papers, slide decks, notes, transcripts, docs, or source folders into a source-grounded curriculum, learning path, lessons, practice, and recommended supplemental materials. Use when the user asks to learn the essence of provided materials, create a course from materials, build a curriculum from papers or PPTs, or find learning resources that explain the material. Do not use for a one-off summary, ordinary literature review, or a generic course that is not grounded in supplied materials.
---

# Material to Course

Create learning programs from the user's actual materials. The goal is not to summarize every page. The goal is to identify the essence of the material, turn it into observable learner capabilities, find high-quality learning resources where useful, and produce a course the learner can follow.

## Core Contract

Use the supplied materials as the primary source. External resources are allowed only to clarify prerequisites, fill explicit gaps, or provide better explanations and exercises. Label every external addition as `Supplemental`.

Never invent page numbers, slide numbers, citations, charts, equations, claims, or resource links. If material cannot be read or a claim cannot be verified, mark it as an extraction or verification issue.

Prefer a compact, useful course over a complete content dump. Order by learning dependency and capability formation, not by the original table of contents.

## Workflow

1. Confirm or infer the learning context: audience, background, target capabilities, time budget, format, and stakes.
2. Inventory the materials. Record each source, format, extraction status, and any unreadable sections.
3. Distill the essence: central problems, core concepts, methods, assumptions, examples, evidence, and recurring confusions.
4. Convert the essence into 3-8 observable capabilities. Read [references/course-design.md](references/course-design.md) before building the curriculum.
5. Build the prerequisite graph and module sequence. One lesson should form one coherent capability or prerequisite capability.
6. For each lesson, search for strong existing learning materials when web access is available and the user wants external learning resources. Read [references/learning-material-search.md](references/learning-material-search.md) first.
7. Write lessons and practice with an attempt-first pattern. Read [references/lesson-and-assessment-patterns.md](references/lesson-and-assessment-patterns.md) before drafting full lessons, quizzes, or answer keys.
8. Deliver the course package and run the final audit in [references/quality-checklist.md](references/quality-checklist.md).

## Default Deliverables

Adapt the structure if the user asks for a single document, slides, LMS text, or a short learning path. Otherwise create:

```text
<course-slug>/
|-- 00-syllabus.md
|-- 01-material-map.md
|-- 02-resource-guide.md
|-- modules/
|   |-- 01-<module>/
|   |   |-- 00-overview.md
|   |   |-- 01-<lesson>.md
|   |   `-- 99-checkpoint.md
|   `-- ...
|-- answers/
|   `-- ...
|-- review-schedule.md
`-- extraction-and-verification-issues.md
```

If the user only wants a plan, deliver `00-syllabus.md`, `01-material-map.md`, and `02-resource-guide.md` without writing all lessons.

## Output Rules

- Separate source-grounded content from `Supplemental` content.
- Keep answer keys separate from learner-facing tasks.
- Include a material coverage map so the user can see which lessons are grounded in which sources.
- Include a "what not to learn yet" section to prevent scope creep.
- For high-stakes, fast-changing, or regulated topics, include a verification note and recommend authoritative sources.

## Handoff Prompts

Use these prompts when helpful:

```text
Use $material-to-course on these papers, slides, and notes. Build a 2-week self-study curriculum that teaches the essence, identifies prerequisites, finds supplemental learning resources, and includes practice with answer keys.
```

```text
Use $material-to-course to create only the syllabus, prerequisite map, and learning resource guide from this material set. Do not write full lessons yet.
```
