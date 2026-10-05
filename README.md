**Founder-prepared and AI-assisted. Nothing this plugin produces is an award, a publisher byline, an endorsement or independent verification, and every output says so once.**

# Founder of the Year

A Claude Code plugin (one skill, four agents) that writes a confident, attractive, magazine-style profile of a founder and their businesses, as Markdown, a designed HTML page and a PDF, with a short media pack and a separate verification sheet behind it. The name is a creative brief, not a status.

## What it does

1. **Set up.** Reads what already exists (a brief, an earlier draft, an interview) and records who may be named and what stays private.
2. **Gathers first.** Finds out what it can reach (connected tools, signed-in CLIs, local folders, reachable machines, the founder's sites, public registers), then reads the founder's own sources before asking anything: notes vault, CRM, code host, case studies, client notes. Read-only, no credentials. Works with whatever systems the founder has.
3. **Asks once.** One short batch of questions, each with a sensible default, for what the sources cannot say. Interviews one question at a time only for the human story.
4. **Chooses the story.** A few candidate angles judged on evidence, interest and risk.
5. **Writes it.** Headline, standfirst, at-a-glance panel, case-study panels, timeline, pull-quotes only where the words are exact. Caveats go in the verification sheet, not the article.
6. **Checks and hands over.** One evidence check and one editorial read by smaller, cheaper sub-agents that the lead validates, a mechanical pass, then a few plain lines to the founder.

## Install

```
/plugin marketplace add DEX-CON-ONE/founder-of-the-year
/plugin install founder-of-the-year@founder-of-the-year
```

Other Agent Skills tools: `npx skills add DEX-CON-ONE/founder-of-the-year`.

Then ask in plain words, for example: *"Use founder-of-the-year to write my founder profile. My notes are in my vault and my client work is on GitHub; read those first and ask me only what you can't find."*

## What is in the package

Plain Markdown plus one HTML template: `skills/founder-of-the-year/SKILL.md`, ten reference files, an article template in `assets/`, four agents in `agents/` (researcher, evidence reviewer, editorial reviewer, pack reviewer), and the manifests. No code, hooks or servers. The PDF is printed from the HTML with a headless browser you already have.

## Limits

- Not independent journalism and not a verifier: it checks claims against the sources you point it at and public records, and says what it could not check. AI review is not external verification.
- Not a mass-pitch tool: any pitch is a draft for a human to rewrite.
- Run end to end on its author's own story and improved from what that run found. Issues and criticism welcome.

## Privacy

See [PRIVACY.md](PRIVACY.md). The plugin makes no network calls of its own; your prompts and files go to your model provider under its terms. Keep the assignment's `private/` folder out of version control.

## Affiliation

Works with Claude Code and other Agent Skills-compatible tools. An independent project, not affiliated with, endorsed by or sponsored by Anthropic or OpenAI, and not affiliated with any news organisation or professional body.
