#!/bin/bash


ARTIFACT_SOURCE=artifacts
RELEASE_STAGING=release

COUNT=$(ls "${ARTIFACT_SOURCE}" | wc -l)

./scripts/prepare-release-assets.sh artifacts release

GIT_HASH=$(git rev-parse --short HEAD)
NAME=${1:-$GIT_HASH}

gh release create \
    "${NAME}" \
    --title "${1}" \
    --notes " no notes " \
    --repo "airtonix/telescope-fzf-native.nvim"



for asset in release/*; do 

    gh release upload \
        "${NAME}" \
        $asset \
        --repo "airtonix/telescope-fzf-native.nvim"

done

