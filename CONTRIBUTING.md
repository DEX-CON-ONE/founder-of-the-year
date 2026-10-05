# Contributing

Thanks for taking an interest. This plugin is small on purpose: one skill, four agents, a handful of reference files. Changes are welcome when they make the article better, the honesty rules firmer, or the skill easier to run on someone else's systems.

## Requesting a change

- **Found a bug or a wrong instruction?** Open an issue with the "Bug" template: what you ran, what happened, what you expected, and the file involved.
- **Want the skill to do something differently?** Open an issue with the "Change request" template. Say what the founder needed, why the current behaviour fell short, and what you would change. Discussion happens on the issue before anyone writes a pull request, so nobody wastes an evening.
- **A question** about how a step works goes in a "Question" issue or in Discussions if they are enabled.

## Making a change

1. Fork the repository and create a branch from `main` named `fix/<short-topic>` or `change/<short-topic>`.
2. Keep each pull request to one concern. Reference files are prose; a change to one of them should read well on its own.
3. Rules that are not negotiable, because they protect the founders the skill writes about:
   - No invented facts, quotes, awards, endorsements or affiliations, anywhere in the output or in the examples.
   - The skill drafts; it never sends, posts or publishes.
   - Nothing about a real founder lives inside the plugin. Examples use the author's own worked example in `docs/example/` or a clearly fictional founder.
   - Credentials, private paths and personal details never appear in the skill, the docs or an issue.
4. Run the checks locally if you can: `python -c "import json; json.load(open('.claude-plugin/plugin.json'))"` and read `SKILL.md` once more from the top.
5. Open the pull request against `main` using the template. A maintainer reviews it; `main` is protected, so merges happen through pull requests with one approval and passing checks.

## Versioning

Versions follow `MAJOR.MINOR.PATCH` in `.claude-plugin/plugin.json`, with a matching entry at the top of `CHANGELOG.md`. Maintainers bump the version at release time; a pull request does not need to.

## Code of conduct

Be straightforward and kind. Disagree about the work, not the person. Maintainers may close or edit anything that is abusive, off-topic or that reveals someone's private information.
