#!/usr/bin/env bash
# Written by abloh init. This file is how your project builds.
# It is the single source of truth for the steps abloh runs before it measures your suite,
# and abloh never guesses around it.
# Edit it freely. Plain shell, one step per block. Your coding agent can edit it too.
set -euo pipefail

# step 1: dependencies, from your lockfile. From package-lock.json; chosen over pnpm-lock.yaml, nothing in this repository says which of them is the maintained one, so this one is a placeholder rather than a reading
npm ci --no-audit --no-fund

# After this script finishes, your suite runs sealed: no network, no secrets.
