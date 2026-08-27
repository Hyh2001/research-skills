# Course Design Reference

Use this reference before turning source materials into a curriculum, syllabus, or learning path.

## Intake

Capture or infer these fields:

- Audience: learner background, safe vocabulary, prerequisites already known.
- Target capabilities: what the learner should be able to do after the course.
- Time budget: total duration, daily or weekly study time, deadline.
- Format: self-study markdown, lesson plan, slides, LMS-ready content, tutorial notebook, or compact roadmap.
- Stakes: curiosity, exam, research onboarding, job-critical, or regulated domain.
- Source authority: which user-provided materials are primary, secondary, optional, or outdated.

When information is missing, make a reasonable assumption and state it briefly. Ask only when the missing answer would change the course architecture.

## Material Inventory

Build a material map before writing the course:

```markdown
| Source | Type | Status | Main topics | Key pages/slides/sections | Issues |
| --- | --- | --- | --- | --- | --- |
```

Use `Status` values:

- `Read`: content was inspected.
- `Partially read`: extraction or time limited coverage.
- `Unreadable`: the agent could not access text or interpret visuals.
- `External supplemental`: found outside the user's material set.

For papers, record title, authors if visible, venue/year if visible, and the sections used. For slides, record slide numbers only when actually visible. For notes, record headings or local anchors.

## Essence Extraction

Distill the material into:

- Central problem: what need, question, or pressure motivates the material.
- Core concepts: terms or mechanisms the learner must own.
- Procedures: things the learner must be able to do.
- Assumptions: premises, prerequisites, data conditions, or modeling choices.
- Examples: worked cases, experiments, figures, or applications.
- Confusion pairs: ideas that look similar but behave differently.
- Boundaries: when the method, claim, or concept does not apply.
- Evidence: which sources support which claims.

Then select the 20 percent of content that unlocks the other 80 percent. Put the rest into `learn later` unless it is necessary for a target capability.

## Capability-First Objectives

Convert topics into 3-8 observable capabilities. Each capability must answer:

1. What can the learner do?
2. In what situation?
3. To what standard?
4. What evidence will show it formed?

Avoid verbs such as `understand`, `know`, `appreciate`, or `be familiar with` unless they are converted into observable evidence.

Example:

```text
Weak: Understand policy gradients.
Strong: Given a simple MDP and a stochastic policy, the learner can explain what the policy-gradient estimator optimizes, compute one update term, and identify one high-variance failure mode.
```

## Prerequisite Graph

Order by dependency, not by the source table of contents.

Use this structure:

```markdown
## Prerequisite Graph

Capability A
  -> Concept 1
  -> Procedure 1
Capability B
  -> Capability A
  -> Concept 2
```

Mark edges:

- `Hard`: later capability fails without it.
- `Soft`: later capability is easier with it.
- `Optional`: useful enrichment, not needed for the stated goal.

## Curriculum Shape

For a short primer, use 3-5 lessons and one checkpoint.

For a 1-2 week plan, use 2-4 modules, 5-10 lessons, daily review prompts, and one final integration task.

For a 4-6 week course, use 4-8 modules, checkpoints every 2-3 modules, spaced review, and a final capstone.

Each module should include:

- Purpose: why this cluster matters.
- Capabilities formed.
- Required source sections.
- Supplemental learning resources, if any.
- Lessons in dependency order.
- Checkpoint task.

## What Not to Learn Yet

Include a section that defers nonessential material. This is especially important when the source set contains advanced details, side topics, historical background, implementation variants, or appendices.

For each deferred item, state whether it is:

- unnecessary for the user's goal,
- too advanced before a prerequisite,
- useful only for a later specialization,
- unsupported by the supplied materials.
