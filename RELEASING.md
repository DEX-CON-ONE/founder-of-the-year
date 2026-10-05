# Making the repository public, and releasing

The repository is private until the maintainer decides otherwise. Nothing in the skill, the docs or the scripts publishes anything on its own.

## Going public (one time)

1. Read `README.md`, `docs/index.html` and `docs/example/` once more as a stranger. The worked example is about the author; check it still says so and that no private path, figure or third-party name has crept in (`git grep -nE "C:\\\\Users|/home/" -- . ':!LICENSE'` should return nothing).
2. Decide the licence. `LICENSE` is MIT with Dexteritas Consulting Ltd as the holder; change it before the flip if that is not the decision.
3. Flip visibility:
   ```bash
   gh repo edit DEX-CON-ONE/founder-of-the-year --visibility public --accept-visibility-change-consequences
   ```
4. Apply the branch protection and security settings that a private repository on this plan could not take:
   ```bash
   bash scripts/setup-repo.sh
   ```
   This creates the "Protect main" ruleset (pull request with one approval and code-owner review, passing `validate` check, no force-push, no deletion) and turns on private vulnerability reporting.
5. Publish the docs site from the `docs/` folder: repository Settings, Pages, "Deploy from a branch", `main` and `/docs`. The homepage URL in the repository settings already points at it.
6. Tag the release and write the GitHub release from the top entry of `CHANGELOG.md`:
   ```bash
   git tag -a v0.9.3 -m "Founder of the Year v0.9.3" && git push origin v0.9.3
   gh release create v0.9.3 --title "v0.9.3" --notes-file <(awk '/^## /{n++} n==1' CHANGELOG.md)
   ```
7. Only then share the install line and the links in posts.

## Each release after that

- Bump `version` in `.claude-plugin/plugin.json`, add the entry at the top of `CHANGELOG.md` (the `validate` check fails if they disagree), merge through a pull request, tag, release.
- Keep `docs/example/` in step with the current template by rebuilding it from the author's assignment; never add anyone else's feature to the repository.
