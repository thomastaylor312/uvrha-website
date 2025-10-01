#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKSPACE_DIR="${CODESPACE_VSCODE_FOLDER:-$(pwd)}"
cd "${WORKSPACE_DIR}"

# Ensure git user identity is set for commits.
if ! git config user.email >/dev/null 2>&1; then
    git config user.name "$GIT_COMMITTER_NAME"
    git config user.email "$GIT_COMMITTER_EMAIL"
fi

"${SCRIPT_DIR}/start-hugo.sh"

echo "Use Run Task -> 'Commit Content Changes' when you want to save your edits." >&2
