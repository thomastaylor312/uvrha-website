#!/usr/bin/env bash
set -euo pipefail

WORKSPACE_DIR="${CODESPACE_VSCODE_FOLDER:-$(pwd)}"

BASE_URL="http://localhost:1313"
if [[ -n "${CODESPACE_NAME:-}" && -n "${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN:-}" ]]; then
    BASE_URL="https://${CODESPACE_NAME}-1313.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"
fi

hugo server \
    --bind 0.0.0.0 \
    --baseURL "${BASE_URL}" \
    --appendPort=false \
    --disableFastRender 
