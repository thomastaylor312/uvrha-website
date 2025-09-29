#!/usr/bin/env bash
set -euo pipefail

if pgrep -f "hugo server" >/dev/null 2>&1; then
    exit 0
fi

WORKSPACE_DIR="${CODESPACE_VSCODE_FOLDER:-$(pwd)}"
LOG_DIR="${DEVCONTAINER_LOG_DIR:-${WORKSPACE_DIR}/.devcontainer/logs}"
mkdir -p "${LOG_DIR}"
LOG_FILE="${LOG_DIR}/hugo-server.log"

BASE_URL="http://localhost:1313"
if [[ -n "${CODESPACE_NAME:-}" && -n "${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN:-}" ]]; then
    BASE_URL="https://${CODESPACE_NAME}-1313.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"
fi

nohup hugo server \
    --bind 0.0.0.0 \
    --baseURL "${BASE_URL}" \
    --appendPort=false \
    --disableFastRender \
    >"${LOG_FILE}" 2>&1 &

echo "Hugo server starting in background. Tail logs with: tail -f ${LOG_FILE}" >&2
