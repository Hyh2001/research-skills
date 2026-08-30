---
name: reading-bridge
description: >
  Makes difficult academic and technical material approachable by identifying
  the minimum prerequisite knowledge needed to understand it, finding
  high-quality introductory resources for those prerequisites, and constructing
  a staged learning path that repeatedly returns the reader to the original
  material. Use when a user provides or references a research paper, textbook
  chapter, lecture notes, technical documentation, mathematical derivation, or
  other difficult material and wants to understand what to learn or read first.
---

# Reading Bridge

## Purpose

Reading Bridge helps a reader understand difficult source material without requiring them to first complete an unnecessarily broad curriculum.

The central principle is:

> **The target material is the curriculum.**

Do not replace the target material with a generic course on the surrounding field.

Instead:

1. Analyze the target material.
2. Identify what knowledge it assumes.
3. Determine which assumptions are actual blockers for this reader.
4. Construct a prerequisite dependency graph.
5. Find the smallest set of high-quality resources that resolves those blockers.
6. Interleave those resources with specific sections of the target material.
7. Return the reader to the original material as soon as possible.

The objective is not exhaustive prerequisite mastery.

The objective is:

**minimum sufficient preparation for productive reading.**

## When to Use This Skill

Use this skill when the user asks questions such as:

- "What should I learn before reading this paper?"
- "This paper is too difficult for me."
- "Can you find lectures that prepare me for these notes?"
- "What prerequisites do I need for this textbook?"
- "Help me understand the background for this theorem."
- "Can you make a learning path for this paper?"
- "What should I read before reading this?"
- "I understand most of this paper except the math."
- "Find easier materials before I read these notes."
- "I want to understand this paper without taking an entire course."
- "Bridge the gap between my background and this paper."

The target may be research papers, textbook chapters, lecture notes, technical reports, mathematical derivations, documentation, theses, course materials, a collection of papers, or a specific theorem/equation/section.

Do not trigger merely because the user asks for a summary or explanation. Use Reading Bridge when the central problem is a **knowledge gap between the reader and target material**.

## Governing Principle

Always optimize for the shortest useful path:

\[
\text{Reader's Knowledge}
\rightarrow
\text{Missing Prerequisites}
\rightarrow
\text{Target Material}.
\]

Do NOT optimize for:

\[
\text{Reader}
\rightarrow
\text{Complete Course}
\rightarrow
\text{Complete Field}
\rightarrow
\text{Target Material}.
\]

A prerequisite is worth teaching only if it materially improves the reader's ability to understand the target.

Prefer a focused 30-minute lecture that unlocks a section over a 20-hour course that covers the same concept plus substantial unrelated material.

However, never sacrifice correctness merely to shorten the path.

## Step 1 — Understand the Reader

Before constructing a path, determine what the reader already knows.

Use information already available from the conversation whenever possible. Do not repeatedly ask for background information the user has already provided.

Relevant dimensions may include:

- calculus
- linear algebra
- differential equations
- probability
- statistics
- real analysis
- optimization
- numerical methods
- control theory
- machine learning
- programming
- domain-specific knowledge

Do not rely solely on subjective questions such as "How good are you at real analysis from 1 to 10?"

When necessary, ask concrete diagnostic questions instead.

Example:

> Are you comfortable with sequences and limits, including concepts such as supremum and infimum?

Or:

> Do you know what a sigma-algebra is and why probability measures are defined on one?

Ask diagnostic questions only when the answers would materially change the learning path. If uncertainty is minor, make a reasonable assumption and state it.

## Step 2 — Analyze the Target Material

Analyze the supplied material before searching for resources.

Extract four categories.

### A. Primary objective

Determine what the material is trying to accomplish.

Examples:

- prove a theorem
- introduce measure-theoretic probability
- derive a control algorithm
- present a learning architecture
- formulate a stability guarantee
- explain a numerical method

### B. Concepts explicitly taught

These are concepts the source itself intends to explain.

Do not automatically treat them as prerequisites.

### C. Concepts implicitly assumed

Identify mathematical, technical, and domain knowledge that the authors use without substantial explanation.

Look for:

- undefined terminology
- notation introduced without explanation
- cited classical results
- proof techniques
- mathematical structures
- transformations
- standard algorithms
- domain conventions
- phrases such as "clearly", "it follows", "standard", or "by X theorem"
- equations whose derivation assumes external knowledge

### D. Likely blockers

Determine which assumed concepts are likely to prevent this particular reader from proceeding.

Distinguish between:

- unfamiliar notation
- missing concept
- missing mathematical foundation
- missing domain knowledge
- difficult proof
- excessive abstraction
- missing intuition

## Step 3 — Construct a Prerequisite Graph

Do not produce only a flat prerequisite list.

Represent dependencies conceptually as a directed graph.

If concept A should normally be understood before concept B, represent:

\[
A \rightarrow B.
\]

The graph does not need to be displayed unless useful. Its primary purpose is to prevent incorrect sequencing and unnecessary prerequisite expansion.

## Step 4 — Classify Prerequisites

Every prerequisite should be classified as one of three levels.

### REQUIRED

Without this concept, meaningful understanding of the target is unlikely.

### HELPFUL

The concept substantially improves understanding but can be learned on demand or partially skipped.

### OPTIONAL / DEEP

Useful for deeper understanding, proofs, extensions, or theoretical maturity, but not necessary for the reader's immediate objective.

Avoid prerequisite inflation.

Do not recommend an entire subject merely because the target technically belongs to that subject.

## Step 5 — Determine Minimum Viable Understanding

For each required prerequisite, define the **Minimum Viable Understanding (MVU)**.

MVU means:

> The smallest level of conceptual and technical understanding that allows the reader to continue productively through the target material.

For each prerequisite ask:

1. What does the reader actually need to know?
2. What can safely be postponed?
3. Does the reader need intuition, computational ability, or proof-level mastery?
4. Which part of the target depends on this knowledge?

Example:

Prerequisite: Lyapunov stability

Minimum viable understanding:
- Understand equilibrium points.
- Understand positive-definite functions.
- Understand the interpretation of V(x) as an energy-like quantity.
- Understand why decreasing V along trajectories implies stability.
- Recognize the standard Lyapunov stability conditions.

Not yet necessary:
- Converse Lyapunov theorems.
- LaSalle's invariance principle.
- Input-to-state stability.
- Advanced nonsmooth Lyapunov theory.

## Step 6 — Search for Learning Resources

Search specifically for resources that teach each missing prerequisite at the required depth.

Search at the **concept level**, not only at the target-document level.

Bad search:
- "How to understand Paper X"

Better searches:
- "Lyapunov stability introductory lecture"
- "Lyapunov direct method university notes"
- "positive definite functions control tutorial"
- "class K functions nonlinear control notes"

Use multiple search formulations when necessary.

## Resource Preference Hierarchy

Prefer resources roughly in this order:

1. University course pages and lecture notes
2. University lecture videos
3. OpenCourseWare and equivalent institutional resources
4. Official textbook supplements
5. Notes written by recognized researchers or instructors
6. High-quality educational platforms
7. Carefully written technical tutorials
8. Blog posts
9. Forums or informal discussions

This hierarchy is not absolute. Pedagogical accessibility matters.

A clear tutorial may be better than a prestigious but extremely dense set of notes for a beginner.

## Resource Evaluation

Evaluate candidate resource \(r\) conceptually according to

\[
S(r)
=
w_R R
+
w_A A
+
w_P P
+
w_M M
+
w_C C
-
w_O O,
\]

where:

- \(R\): relevance to the exact prerequisite
- \(A\): authority and reliability
- \(P\): pedagogical accessibility
- \(M\): match to the reader's current background
- \(C\): coverage of the minimum viable understanding
- \(O\): unnecessary overhead

Do not calculate numerical scores unless useful. Use this as a reasoning framework.

## Prefer Sections Over Entire Courses

Whenever possible, recommend specific lectures, chapters, sections, pages, videos, or exercises.

Instead of:

> Take MIT 6.436J.

Prefer:

> Read MIT 6.436J Lectures 7–9 on abstract integration, then return to Chapter 5.

If an entire course is genuinely appropriate, explain which parts are essential and which can be skipped.

## Resource Verification

Never invent:

- course names
- lecture numbers
- URLs
- textbook sections
- page numbers
- instructors
- paper titles

Verify online resources before recommending them.

Prefer stable official links.

When recommending a resource, briefly explain why it was selected.

## Step 7 — Construct the Reading Bridge

The learning path should alternate between prerequisite preparation and the target material.

Preferred structure:

\[
B_1
\rightarrow
T_1
\rightarrow
B_2
\rightarrow
T_2
\rightarrow
B_3
\rightarrow
T_3,
\]

where \(B_i\) is a bridge resource and \(T_i\) is a section of the target.

Avoid:

\[
B_1
\rightarrow
B_2
\rightarrow
B_3
\rightarrow
B_4
\rightarrow
B_5
\rightarrow
\text{entire target}.
\]

Return the learner to the target as early and as often as practical.

## Define "Ready When" Criteria

Every major bridge should include a small readiness test.

Do not require formal exams. Use observable understanding.

Example:

READY WHEN

You can explain:

1. What a Lyapunov function represents.
2. Why \(V(x) > 0\) matters.
3. Why \(\dot V(x) < 0\) indicates trajectories move toward equilibrium.
4. The difference between stability and asymptotic stability.

Then explicitly state:

RETURN TO TARGET

Read Section III-A through Equation (8).

This prevents endless prerequisite study.

## Two Operating Modes

### QUICK BRIDGE

Use when:
- the reader has limited time
- wants to understand a paper today
- needs only enough background to continue
- explicitly requests a concise path

Optimize aggressively for minimum viable understanding.

Typical output:
- 2–5 prerequisite concepts
- 1–2 resources per concept
- explicit skip instructions
- approximate study time
- precise return points

### DEEP FOUNDATION

Use when:
- the reader wants durable mastery
- the target exposes substantial foundational gaps
- the reader is studying for research
- the user explicitly asks for a comprehensive path

Include:
- prerequisite hierarchy
- courses
- textbook chapters
- exercises
- milestone checks
- optional deeper material

Even in Deep Foundation mode, maintain a clear relationship to the original target.

## Default Output Format

Use the following structure unless another format is clearly better.

### Reading Bridge: [Target]

#### Destination

In 2–4 sentences explain:
- what the target covers
- why it is difficult
- what level of preparation appears necessary

#### What Is Blocking You

Use a concise table with:
- prerequisite
- importance
- needed for
- required depth

#### Dependency Map

Show only when useful.

#### Bridge N — [Concept]

**Goal:** what the learner needs to understand.

**Minimum viable understanding:**
- ...
- ...

**Study:**
1. [Resource]
   - Read/watch: specific section
   - Why this resource
   - Estimated time

2. [Optional alternative]

**Skip for now:**
- ...

**Ready when:**
- ...

##### Return to the target

Read:
- [specific target section]

Pay particular attention to:
- [equation/theorem/concept]

Do not worry yet about:
- [advanced detail]

Repeat for subsequent bridges.

#### Final Route

Summarize the path compactly.

#### Optional Deepening

Only include material that goes beyond minimum viable understanding.

## Handling Multiple Papers

When the user provides several papers, first identify shared prerequisites.

Do not independently construct a full prerequisite path for every paper.

Construct:

\[
\text{Shared Foundations}
+
\text{Paper-Specific Branches}.
\]

Prioritize shared foundations that unlock multiple papers.

If papers vary significantly in difficulty, suggest a reading order.

### Use target documents as bridges to one another

When multiple target documents are supplied, treat easier target documents as potential bridges to harder target documents before introducing external material.

Identify conceptual progression among the supplied materials, for example:

\[
\text{introductory target}
\rightarrow
\text{applied target}
\rightarrow
\text{theoretical target}.
\]

Prefer this progression when it reduces unnecessary external study.

## Handling Textbooks

For textbooks, do not assume the reader must prepare for the entire book before beginning.

Analyze prerequisites chapter by chapter.

Prefer:

\[
\text{Bridge}
\rightarrow
\text{Ch. 1--2}
\rightarrow
\text{Bridge}
\rightarrow
\text{Ch. 3}
\rightarrow
\text{Bridge}
\rightarrow
\text{Ch. 4--5}
\]

rather than completing all prerequisites first.

Use the textbook itself to teach concepts whenever it explains them adequately.

## Handling Mathematical Proofs

When a proof is the main blocker, identify whether the difficulty comes from:
- notation
- a missing theorem
- proof technique
- abstraction
- algebraic manipulation
- analysis
- probability
- topology
- optimization
- domain-specific reasoning

Do not automatically recommend an entire mathematics course.

Instead, identify the smallest missing proof tool.

## Handling Notation

Sometimes the reader understands the concept but not the notation.

Treat notation problems separately from conceptual prerequisites.

If the main difficulty is notation, create a notation map before recommending external study.

Do not send the learner through a course when a notation explanation solves the problem.

## Stop Conditions

Stop expanding prerequisites when one of the following is true:

1. The learner can reasonably begin the relevant target section.
2. Additional prerequisites are merely helpful rather than required.
3. The prerequisite chain reaches knowledge the reader already possesses.
4. Additional study would produce little immediate improvement in target comprehension.

Avoid recursive prerequisite explosions.

Cut the graph at the learner's demonstrated knowledge boundary.

## Avoid These Failure Modes

### Generic curriculum generation

Bad:
> Learn calculus, linear algebra, probability, optimization, and control theory.

Good:
> For Equation (12), you specifically need the chain rule, Jacobians, and linearization around an equilibrium. You do not need a full optimization course.

### Prestige-based recommendation

Do not recommend a resource merely because it comes from a prestigious institution.

Select it because it is pedagogically appropriate.

### Too many resources

Do not give ten equivalent tutorials.

Default to one primary resource and one alternative when useful.

### Never returning to target

The reader should encounter the original material throughout the learning path.

### Over-teaching

Do not require proof-level understanding when conceptual understanding is sufficient.

### Under-teaching

Do not recommend superficial explanations when the target genuinely requires mathematical maturity.

### Invented precision

Do not claim "Read pages 17–23" unless those pages have actually been verified.

### Treating every unfamiliar term as a prerequisite

Some terms can be explained locally in one sentence.

Use external resources only when they provide meaningful value.

## Time Awareness

Estimate learning time conservatively when useful.

Use approximate labels such as:
- 10–20 min
- ~1 hour
- 2–3 hours
- several study sessions
- multi-week foundation

Do not pretend these estimates are precise.

Optimize Quick Bridge paths for high comprehension gained per unit time.

## Final Decision Rule

Before recommending any prerequisite resource, ask:

> **If the reader studies this resource, will it noticeably improve their ability to understand a specific part of the target material?**

If the answer is no, omit it.

Before expanding any prerequisite, ask:

> **Does the reader need this before continuing, or can it be learned when encountered?**

Prefer just-in-time learning whenever practical.

The success criterion is not:

> "The learner completed the prerequisite curriculum."

The success criterion is:

> **"Material that was previously inaccessible has become readable, and the learner knows exactly where to continue."**
