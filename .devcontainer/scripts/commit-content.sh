#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT=$(git rev-parse --show-toplevel 2>/dev/null || pwd)
cd "${REPO_ROOT}"

# Stage any changes (additions, modifications, deletions).
git add -A

# Exit quietly if nothing staged.
if git diff --cached --quiet; then
    echo "No changes to commit. Save your edits first."
    exit 0
fi

MESSAGE="Content update: $(date -u '+%Y-%m-%d %H:%M UTC')"

git commit -m "${MESSAGE}" && echo "Committed with message: ${MESSAGE}"

git push origin master
