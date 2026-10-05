---
name: founder-of-the-year
description: Write a confident, attractive, magazine-style profile of a founder and their businesses (a "founder of the year" feature), delivered as Markdown plus a designed HTML and PDF, with a short media pack and a separate verification sheet. It gathers from the founder's own sources first (notes vault, CRM, GitHub, case studies, client notes), asks one short batch of questions, checks every claim against evidence, then writes. Use whenever someone wants a founder profile, founder story, personal-brand feature, award-style narrative, bios, or promotional copy about a founder, even if they never name this skill. The name is a creative brief and never implies an award has been won.
---

# Founder of the Year

**What it makes.** One really good article about a founder and their businesses: confident, specific, attractive, laid out like a magazine profile, and true. Everything else it produces (gathered notes, interview record, claim ledger, bios, fact sheet, verification sheet, promo copy) exists to make that article possible and defensible.

**How it stays honest.** No invented facts, quotes, awards, endorsements or affiliations. Every claim traces to a source in a private ledger. Reporting caveats go in a separate verification sheet, not in the article. The skill drafts; it never sends, posts or publishes.

## Labelling

Label the article "Founder-prepared feature, drafted with AI assistance" once, near the top, and nowhere else in the body. Never imply a publication, a byline, an award or independent verification. A target publication may inform length and register, never its masthead.

## Workspace

One folder per founder, with the public/private line drawn physically:

```
founder-feature/<subject>/
  public/    feature.md, feature.html, feature.pdf, verification-sheet.md,
             bios.md, fact-sheet.md, promo-pack.md (only what is cleared to share)
  private/   assignment.md, gathered.md, interview/, claim-ledger.tsv,
             open-questions.md, narrative-options.md, research/, review-log.md, legacy/
```

Nothing about a real founder lives inside this skill. File details: [references/assignment-template.md](references/assignment-template.md).

## The six steps

**1. Set up.** Read whatever already exists before asking anything: a brief, an earlier draft, a handbook, an interview record. Write `private/assignment.md`: the founder's public name, the businesses, the reader, the boundaries (who may be named, what stays private), the outputs wanted. Import earlier work rather than redoing it.

**2. Gather first.** Start by finding out what you can actually reach from where you are running: connected tools, signed-in command-line tools, local folders that look like a notes vault or a client archive, machines the founder has given you a way into, their websites, the public registers. Then collect what those sources already know (clients, projects, dates, the founder's own written words) into `private/gathered.md` and start the claim ledger. Read-only; no credentials, no unrelated personal material. Every founder keeps this in a different place, so discover first and assume nothing. How to inventory and read each kind of source: [references/source-adapters.md](references/source-adapters.md).

**3. Ask once.** Turn what the sources cannot tell you into one short batch of questions, each with a sensible default, most important first. Ask it at a natural break and carry on under the defaults until answers arrive. Interview for the human story (motivation, the hard decision, what changed for someone) only where the record is silent, one question at a time: [references/adaptive-interview.md](references/adaptive-interview.md). Never ask what the systems already answered.

**4. Choose the story.** List three or four candidate angles, judge them on evidence, reader interest and risk, and pick one. Record it briefly in `private/narrative-options.md`. Headline, standfirst and structure follow from it: [references/editorial-framing.md](references/editorial-framing.md).

**5. Write it.** Write the article in the award-profile register: assured, warm, specific, with the strongest true achievements given their proper weight and the founder's approved personal motivation where it explains choices. Attribute only what the record contains, and keep every "he says" that is not doing real work out of the body. Give it real structure: headline, standfirst, at-a-glance panel, case-study panels, a timeline, pull-quotes only where the words are exact. Produce `feature.md`, `feature.html` and `feature.pdf` from the same text, then the verification sheet and the short pack. Standards: [references/finished-founder-feature.md](references/finished-founder-feature.md). Layout and build: [references/article-design.md](references/article-design.md). Pack: [references/media-pack.md](references/media-pack.md). Promotional copy, if asked for, comes after review: [references/promo-pack.md](references/promo-pack.md). An announcer-led intro video, if asked for, comes last: [references/promo-video.md](references/promo-video.md).

**6. Check and hand over.** One evidence check (does any sentence say more than its source?), one editorial read (would a stranger enjoy it and believe it?), then apply the findings and run a mechanical pass (label present, banned terms absent, private names absent). More rounds only if the first found something serious. Record what ran in `private/review-log.md`. Then tell the founder, in a few plain lines, what you made, where it is, and the one or two decisions still theirs. Details: [references/editorial-team.md](references/editorial-team.md) and [references/interview-and-evidence.md](references/interview-and-evidence.md).

## Pick the stage asked for

Honour the request directly. Do not make the founder repeat earlier steps because the skill was invoked.

| The founder wants | Do | Read |
|---|---|---|
| The article (new or redo) | Steps 1 to 6 | as above |
| Just the gathering | Step 2, then a short list of what it found and what is missing | `source-adapters.md` |
| Interview questions, or to be interviewed | Step 3 | `adaptive-interview.md` |
| A better headline, angle or tone | Step 4, then revise | `editorial-framing.md` |
| The HTML or PDF from an existing draft | Step 5, build only | `article-design.md` |
| Bios, fact sheet, posts | The pack, from the reviewed article | `media-pack.md`, `promo-pack.md` |
| An intro video | The video stage, from the reviewed article | `promo-video.md` |
| A check of an existing draft | Step 6 | `editorial-team.md` |
| A positioning handbook first | The optional handbook stage | `personal-brand-handbook.md` |

## The four agents

Installed as `founder-of-the-year:<name>` when the plugin is loaded. Use them where delegation is authorised; otherwise run the same passes yourself and say so in the review log. Give each the minimum brief and one output, and never put two agents on one file.

- `founder-researcher`: one bounded question, primary sources, a dated register. Also used for gathering from the founder's own systems.
- `founder-evidence-reviewer`: tests the draft's claims against the raw sources. Read-only.
- `founder-editorial-reviewer`: reads the draft cold and judges attraction, promise, structure and caveat load. Read-only.
- `founder-pack-reviewer`: checks the pack against the article for drift and leaks. Read-only; run it only when the pack changed.

Coordination: [references/editorial-team.md](references/editorial-team.md).

## Talking to the founder

Short and plain. No process narration, no jargon, no summaries of files they can open themselves. One batch of questions, each with a default, never mid-story. When something is ready, say what it is and where it is, then stop.
