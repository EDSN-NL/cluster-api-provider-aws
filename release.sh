#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

export RELEASE_BRANCH="release-2.8-ish"
export RELEASE_VERSION="v2.8.0-fork"
export PREVIOUS_VERSION="v2.7.1"
# Token must be generated and set locally. Go to your GitHub Profile,
# then Developer Settings, then Personal access tokens, then Fine-grained tokens.
# Generate a new token with the "Resource owner" set to "EDSN-NL".
# Set "Repository access" to "Only select repositories" and this repo.
# For "Permissions", set "Contents" to "Read and write".
# Don't commit this 🫠
# export GITHUB_TOKEN=

make release
