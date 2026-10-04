# Image → Trace

**Raster / scalar field / contour abstraction.**

Image → Trace is an independent GeoGeek Observatory deployment of the production image-analysis workbench. It derives luminance, edge, or chroma fields from an image, extracts Marching Squares contours, compares raster and trace representations, accepts local images, and exports SVG or PNG output.

## Public instrument

https://geogeeklab.github.io/image-to-trace/

## Runtime

The production runtime is pinned to a specific commit of `GeoGeekLab/GeoGeekLab.github.io`. See `PRODUCTION.md` for the exact baseline, sample provenance, interpretation limits, and deployment policy.

## Local shell

```bash
python -m http.server 8000
```

Open `http://localhost:8000`.

The default sample and pinned runtime require network access. User-selected images are processed locally in the browser.

## Deployment

Pushes to `main` deploy through `.github/workflows/pages.yml`. Static production-contract checks run before the Pages artifact is uploaded.

Third-party software and data remain subject to their respective terms and licenses. This repository does not introduce a project license that is absent from the source project.
