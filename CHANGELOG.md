# Changes

## 0.9.3 - 5 October 2026

- Video stage gathers the founder's brand and work imagery before composing: brand marks, headless-browser captures of the founder's own sites and the flagship project's public page (figures masked), the article's own hero, used as moving set behind the type (`promo-video.md`).
- Repository scaffolding for a public release: contributing guide, security policy, issue and pull request templates, code owners, a `validate` workflow (plugin manifest, changelog and version agreement, skill and agent frontmatter, referenced files exist, no secrets or private paths), a branch ruleset and a setup script, a releasing checklist. MIT licence (holder: Dexteritas Consulting Ltd) pending the maintainer's final decision.

## 0.9.2 - 5 October 2026

- Intro video stage (`references/promo-video.md`): an announcer-led stage introduction of the founder, about 25 to 35 seconds, with an instrumental track generated for the piece, every spoken line tied to a verification-sheet ID, and an honest end card. "Founder of the Year" stays the feature's title, never an award.
- Portrait safety: the reference photo for any AI-rendered portrait must be verified as the founder before rendering (public pages carry other people's photos); how to capture a sign-in-protected profile photo through a browser the founder has signed in with, without copying signed addresses (`article-design.md`).
- Brand marks: taken from the founder's brand files or, failing that, from each business's own website or LinkedIn company page; a text wordmark only when no mark exists (`article-design.md`, `source-adapters.md`).
- Self-contained HTML: images are inlined as data URIs before handover so `feature.html` opens correctly from a zip, an email or a phone with no assets folder beside it; the asset-referencing copy stays in `private/`.
- Pack zip puts the files at its root.

## 0.9.1 - 5 October 2026

- Gather step now starts with discovery: inventory the connected tools, signed-in command-line tools, local folders that look like a notes vault or client archive, reachable machines, the founder's sites and the public registers, and record what can and cannot be reached before reading anything. The adapters are written for any notes vault, CRM, code host or drive, so the skill runs on whatever systems a founder has (`source-adapters.md`, Step 0).
- Models and cost: researchers and reviewers run on a smaller model at moderate effort by default; the lead validates their findings rather than redoing the work (`editorial-team.md`).
- Layout: a highlight band for the flagship project plus two case-study cards (three cards left an orphan); the closing set as plain text with a rule; print rules that keep the hero on page one (`article-design.md`, `assets/feature-template.html`).
- LinkedIn as a source: the founder's exact headline and About, roles, company-page descriptions and recommendations (third-party testimony, named only with the recommender's permission or the founder's decision where it is already public), read from a data export, public pages, or a browser the founder has signed in with and asked you to use (Cowork: the machine's browser; Claude Code: Claude in Chrome or the browser pane). Read only; never sign in yourself (`source-adapters.md`).
- Imagery: a cover, a portrait slot that hides itself when no portrait exists, and a strip of the founder's own brand marks. An AI-rendered portrait is allowed only of the founder, from their own photograph, at their request, and captioned "Portrait: AI-rendered from the founder's own photograph." wherever it appears; never a generated likeness of anyone else, never presented as a photograph (`article-design.md`).

## 0.9.0 - 5 October 2026

- Re-centred the skill on the article. The primary deliverable is now a confident, magazine-style founder profile with real structure (headline, standfirst, at-a-glance panel, case-study panels, timeline, exact pull-quotes), produced as Markdown, a designed HTML page (`assets/feature-template.html`) and a PDF printed from it (`references/article-design.md`). Reporting caveats move to the verification sheet; the body keeps only the attributions that do real work (`references/finished-founder-feature.md`).
- Added a gather-first step and a `source-adapters.md` reference: read the founder's notes vault, CRM, GitHub, case studies, client notes and public registers (read-only, credentials filtered) before asking anything, so the founder is never asked what their systems already know.
- One short batch of questions, each with a default, replaces open-ended question lists; work carries on under the defaults.
- Simplified the workflow to six steps and cut SKILL.md to under half its length. Every reference file shortened. Review loop reduced to one evidence check and one editorial read, with the pack review only when the pack changed.
- Agents kept at four; the researcher now also gathers from the founder's own systems, the evidence reviewer also frees over-hedged sentences, the editorial reviewer counts attributions and judges attraction, and the pack reviewer checks Markdown, HTML and PDF agree.
- Messages to the founder: short and plain, by rule.

## 0.8.0 — 4 October 2026

- Added a promotional pack stage (`references/promo-pack.md`): message house, profile copy, posts, website copy, a short-video brief and small assets, all derived from the reviewed feature and ledger, with a private claims check and a visible AI-assistance line. It cannot say more than the feature does.
- The pack reviewer now also checks promotional assets for amplified claims and drifting maturity wording.
- Preparation and handover replies are kept short; the detail lives in the files (found in the first with/without comparison, where the guide-preparation reply ran to roughly 450 words).
- Added guidance for importing earlier work from another tool or session, and the fallback for when the plugin agents are not installed (both found while running the skill on a real assignment).
- Added an "audit the founder's own properties first" step (public registers, name and role consistency, every figure and guarantee on the founder's own sites), because an editor finds those first. Found while running the skill on a real assignment, where it surfaced a wrong surname and unsubstantiated headline percentages.
- Attribution rule: attribute to the founder only what the interview record contains; the writer's own synthesis must read as the writer's. And superseded drafts go to `private/legacy/`, never `public/`. Both found when an evidence review caught an invented lesson and an import left old drafts in the shareable folder.
- Promo pack: founder-only guidance moves to `private/promo-guidance.md`; the evidence check now covers the promotional pack; added guidance on when to stop the review loop.
- Kept the name "Founder of the Year" by decision, and made the honest-labelling rule explicit in the description and the template.

## 0.7.0 — 4 October 2026 (Claude Code port)

- Ported from a Codex skill to a Claude Code plugin: skill plus four scoped subagents (`founder-researcher`, `founder-evidence-reviewer`, `founder-editorial-reviewer`, `founder-pack-reviewer`) with tool limits that match their roles. Reviewers are read-only.
- Added an explicit assignment workspace with physically separate `public/` and `private/` folders, and a stage router in the skill.
- Added a narrative-assessment step: candidate narratives are scored on evidence strength, reader value, distinctiveness and risk before an angle is chosen, and the rejected options are recorded.
- Added a clarification queue (`open-questions.md`) so gaps and conflicts are tracked, asked in batches, and never silently resolved.
- Interview guidance rewritten for a text session (dictation expected) with a saved `session.md` for resuming. Dropped Codex-only metadata and ChatGPT-project instructions.
- Content unchanged in substance: honest labelling, claim ledger, source-strength rules, privacy rules, finished-feature treatment.

## 0.6.0 — 3 October 2026 (Codex)

- Added direct investigation of customer cases, portfolio sites, testimonials and independent reviews, with clear source distinctions.
- Required standalone reader context and an original narrative built from reporting rather than source-document structure.
- Added substantive publication editing, copy-editing and proofing, including unresolved website/interview stage conflicts.

## 0.5.0 — 3 October 2026

- Made the finished founder feature the main deliverable of a full assignment.
- Added confident award-profile treatment and guidance for bringing supported achievements and their significance forward.
- Added a final editorial review of the completed article, with changes applied before delivery.
- Kept detailed verification gaps in accompanying records while preserving accurate attribution and public boundaries.

## 0.4.0 — 3 October 2026

- Added an explicit editorial-framing stage and assignment-specific editorial brief.
- Added audience, takeaway, headline/standfirst, key language, tone and narrative structure decisions.
- Expanded editorial review beyond factual consistency to assess the article's reader promise and execution.

## 0.3.0 — 2 October 2026

- Added personal brand handbook creation as the first stage for new full assignments.
- Added explicit reuse of an existing handbook and latest decisions, without repeating discovery.
- Connected handbook evidence and public boundaries to the adaptive interview stage.

## 0.2.0 — 2 October 2026

- Added explicit prepare, interview, resume, research and drafting stages.
- Added adaptive journalist questions, conditional probes and voice guidance.
- Added reusable assignment state and cross-app handoff templates.
- Added scoped editorial-team coordination with model preferences and evidence requirements.
- Separated subject-specific material from the shareable workflow.
- Added packaging, reuse and improvement instructions.

## 0.1.0 — 2 October 2026

- Initial founder feature, interview/evidence guidance and media-pack workflow.
