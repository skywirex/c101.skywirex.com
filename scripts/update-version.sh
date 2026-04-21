#!/usr/bin/env sh
set -eu

REPO_ROOT="$(git rev-parse --show-toplevel)"
OUT_FILE="$REPO_ROOT/src/version.json"

COMMIT_SHA="$(git rev-parse HEAD)"
COMMIT_SHORT="$(git rev-parse --short HEAD)"
BUILD_DATE="$(git show -s --date=format:'%d/%m/%Y' --format=%cd HEAD)"

cat > "$OUT_FILE" <<EOF
{
  "buildDate": "$BUILD_DATE",
  "commitSha": "$COMMIT_SHA",
  "commitShort": "$COMMIT_SHORT"
}
EOF

echo "Updated $OUT_FILE"
