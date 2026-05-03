#!/usr/bin/env bash
set -euo pipefail
FLOWS_DIR="$(cd "$(dirname "$0")/../flows" && pwd)"
PASS=0; FAIL=0
for f in "$FLOWS_DIR"/*.json; do
  if python3 -c "import json,sys; json.load(open(sys.argv[1]))" "$f" 2>/dev/null; then
    echo "  v $(basename "$f")"; PASS=$((PASS+1))
  else
    echo "  x $(basename "$f")"; FAIL=$((FAIL+1))
  fi
done
echo; echo "Flows: $PASS passed, $FAIL failed"
[ "$FAIL" -eq 0 ]
