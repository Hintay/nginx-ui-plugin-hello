#!/usr/bin/env bash
# Packs the portable package into dist/, for nginxui/plugin-release to sign.
set -euo pipefail
cd "$(dirname "$0")"

id=$(node -p "require('./plugin.json').id")
version=$(node -p "require('./plugin.json').version")
if [[ "${GITHUB_REF_TYPE:-}" == tag && "${GITHUB_REF_NAME}" != "v${version}" ]]; then
  echo "tag ${GITHUB_REF_NAME} does not match version ${version} of plugin.json" >&2
  exit 1
fi

rm -rf dist
mkdir -p dist
tar -czf "dist/${id}-${version}.tar.gz" plugin.json templates
echo "dist/${id}-${version}.tar.gz"
