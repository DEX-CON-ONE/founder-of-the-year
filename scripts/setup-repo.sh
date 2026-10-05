#!/usr/bin/env bash
# One-time repository setup for DEX-CON-ONE/founder-of-the-year, run by a maintainer with `gh` signed in.
# Safe to re-run. It does NOT change the repository's visibility; making it public is a separate, deliberate step:
#   gh repo edit DEX-CON-ONE/founder-of-the-year --visibility public --accept-visibility-change-consequences
set -euo pipefail
REPO="${1:-DEX-CON-ONE/founder-of-the-year}"
DIR="$(cd "$(dirname "$0")/.." && pwd)"

echo "Repository settings: issues on, wiki off, projects off, squash + merge, delete branches on merge"
gh repo edit "$REPO" --enable-issues --enable-wiki=false --enable-projects=false \
  --enable-squash-merge --enable-merge-commit --enable-rebase-merge=false --delete-branch-on-merge \
  --description "A Claude Code skill that writes a confident, magazine-style founder profile with a separate verification sheet. Drafts only; never publishes." \
  --homepage "https://dex-con-one.github.io/founder-of-the-year/" >/dev/null

echo "Labels"
for L in "bug:d73a4a:Something is wrong" "change-request:0e8a16:A requested change in behaviour" "question:0075ca:A question about use" "good first issue:7057ff:Small and well-scoped" "honesty:b60205:Touches the no-invention or no-publish rules"; do
  IFS=: read -r name color desc <<<"$L"
  gh label create "$name" --repo "$REPO" --color "$color" --description "$desc" --force >/dev/null
done

echo "Branch ruleset on the default branch (pull request, one approval, code-owner review, passing 'validate' check, no force-push, no deletion)"
if ! gh api "repos/$REPO/rulesets" >/dev/null 2>&1; then
  echo "  rulesets are not available on a private repository on this plan; re-run this script after making the repository public"
  EXISTING=""; SKIP_RULESET=1
else
  EXISTING=$(gh api "repos/$REPO/rulesets" --jq '.[] | select(.name=="Protect main") | .id' 2>/dev/null || true)
fi
if [ -n "${SKIP_RULESET:-}" ]; then
  :
elif [ -n "$EXISTING" ]; then
  gh api -X PUT "repos/$REPO/rulesets/$EXISTING" --input "$DIR/.github/rulesets/protect-main.json" >/dev/null && echo "  updated ruleset $EXISTING"
else
  gh api -X POST "repos/$REPO/rulesets" --input "$DIR/.github/rulesets/protect-main.json" >/dev/null && echo "  created ruleset"
fi

echo "Security: private vulnerability reporting, Dependabot alerts"
gh api -X PUT "repos/$REPO/private-vulnerability-reporting" >/dev/null 2>&1 || echo "  (private vulnerability reporting needs a public repo or GitHub Advanced Security; skipped)"
gh api -X PUT "repos/$REPO/vulnerability-alerts" >/dev/null 2>&1 || true

echo "Done. Visibility unchanged: $(gh repo view "$REPO" --json visibility --jq .visibility)"
