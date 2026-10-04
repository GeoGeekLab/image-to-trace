#!/usr/bin/env bash
set -euo pipefail

PIN="d949bd75870bfd49f6d12b297e6cca02de107f9c"
RAW="https://raw.githubusercontent.com/GeoGeekLab/GeoGeekLab.github.io/${PIN}/site"
SAMPLE="https://raw.githubusercontent.com/GlobalFishingWatch/frontend/d43ab35fa2ccff9e4b5e22729190defe30e03b72/apps/platform/public/images/layer-library/sentinel2.jpg"

rm -rf _site
mkdir -p _site/runtime _site/assets/lab
cp index.html README.md PRODUCTION.md _site/
touch _site/.nojekyll

curl --fail --silent --show-error --location --retry 3 \
  "${RAW}/figure-analysis-workbench.js" \
  --output _site/runtime/figure-analysis-workbench.js
curl --fail --silent --show-error --location --retry 3 \
  "${SAMPLE}" \
  --output _site/assets/lab/sentinel2.jpg

test -s _site/runtime/figure-analysis-workbench.js
test -s _site/assets/lab/sentinel2.jpg
grep -q 'window.GeoFigureWorkbench' _site/runtime/figure-analysis-workbench.js
! grep -R -q 'cdn.jsdelivr.net/gh/GeoGeekLab/GeoGeekLab.github.io' _site

(
  cd _site
  find runtime assets/lab -type f -print0 | sort -z | xargs -0 sha256sum > runtime-manifest.sha256
)
