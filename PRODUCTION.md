# Production contract

## Runtime baseline

This repository mounts the Image → Trace production workbench from `GeoGeekLab/GeoGeekLab.github.io` pinned to commit `d949bd75870bfd49f6d12b297e6cca02de107f9c`.

The production runtime supports luminance, edge, and chroma scalar fields; Marching Squares contours; compare, overlay, trace, and mask views; local image input; and SVG/PNG export.

## Data contract

- Default sample: a version-pinned Sentinel-2 preview sourced from the Global Fishing Watch frontend repository.
- Local input: JPEG, PNG, or WebP selected by the user and processed in the browser.
- Processing: scalar-field derivation and contour extraction occur locally in the browser.

## Interpretation limits

Contours represent equal values in an image-derived scalar field. They are not terrain contours, elevation, or direct physical measurements.

## Deployment contract

`main` deploys through GitHub Pages Actions. Static contract checks run before the Pages artifact is uploaded.

The production runtime is pinned to an immutable source commit. Runtime upgrades require an explicit pinned-SHA change in `index.html`.
