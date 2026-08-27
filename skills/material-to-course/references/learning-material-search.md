# Learning Material Search Reference

Use this reference when the course should include external learning materials, tutorials, course notes, videos, textbook chapters, documentation, or exercises.

## Search Goal

Find materials that help the learner build the capabilities extracted from the user's sources. Do not search for generic popularity. Search for resources that explain the exact prerequisite, concept, method, or example needed for a lesson.

## When to Search

Search when:

- the user asks to find learning materials,
- the supplied materials are dense papers, slides, or notes that need scaffolding,
- a prerequisite is not explained well in the supplied sources,
- a lesson would be stronger by linking to a clear tutorial, course note, or interactive exercise.

Do not search when the user asks for source-only output or when the material is confidential and externalizing details would be inappropriate. In that case, ask before searching with sensitive terms.

## Source Priority

Prefer, in order:

1. University course notes, open courseware, lecture notes, or lab assignments.
2. Official documentation or official tutorials for tools, APIs, libraries, and standards.
3. Open textbooks, book chapters, or reputable educational projects.
4. Peer-reviewed tutorials, survey papers, or authoritative review articles.
5. High-quality practitioner tutorials with clear authorship, date, examples, and maintenance signals.

Avoid low-signal listicles, SEO farms, link dumps, unattributed slides, outdated posts for fast-changing tools, and resources that only restate definitions without practice.

## Evaluation Criteria

For every recommended resource, record:

```markdown
| Lesson | Resource | Type | Why it fits | Use for | Caveat |
| --- | --- | --- | --- | --- | --- |
```

Check:

- Match: does it teach the exact concept or prerequisite?
- Level: is it appropriate for the learner's background?
- Pedagogy: does it include examples, exercises, visuals, or worked problems?
- Authority: who produced it, and why should the learner trust it?
- Freshness: is it current enough for the domain?
- Scope: does it avoid pulling the learner into unnecessary side quests?

## Integration Rules

Use external resources as lesson companions, not as replacements for the curriculum.

For each lesson, specify one of:

- `Primary reading`: essential source material from the user's set.
- `Supplemental explainer`: external material that clarifies a concept.
- `Practice source`: external exercise or example set.
- `Optional enrichment`: helpful but not required.

Do not recommend more than 1-3 external resources per lesson. A course with too many links becomes a procrastination engine.

## Citation and Verification

Provide URLs for web resources and state the access date when the domain is time-sensitive. If a resource could not be opened, label it `Candidate, not verified` and do not rely on it as evidence.

For research claims, prefer primary papers or surveys. For implementation procedures, prefer official docs. For mathematical prerequisites, prefer stable course notes or textbooks.
