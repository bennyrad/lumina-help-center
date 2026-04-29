#!/usr/bin/env bash
# Build a single combined stylesheet for Help Scout deployment.
# Input:  styles/tokens.css + styles/lumina-helpscout.css
# Output: dist/lumina-helpscout.combined.css

set -euo pipefail

mkdir -p dist

{
  echo "/* Lumina Help Center, combined stylesheet. Auto-generated. Do not edit directly. */"
  echo "/* Source: styles/tokens.css + styles/lumina-helpscout.css */"
  echo ""
  cat styles/tokens.css
  echo ""
  # Strip the @import line from the working stylesheet since tokens are inlined above
  grep -v '^@import url("./tokens.css");' styles/lumina-helpscout.css
} > dist/lumina-helpscout.combined.css

echo "Built: dist/lumina-helpscout.combined.css"