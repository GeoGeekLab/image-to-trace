# Image to Trace

**Raster / contour / abstraction.**

A standalone GeoGeek Observatory instrument for turning a raster image into luminance isolines and exposing the threshold and sampling decisions behind the abstraction.

## Run locally

```bash
python -m http.server 8000
```

Open `http://localhost:8000`.

## Deployment

GitHub Pages deploys automatically from `main` through `.github/workflows/pages.yml`.

Public URL: https://geogeeklab.github.io/image-to-trace/

## Provenance

Extracted into an independent repository from the GeoGeek Lab Observatory in `GeoGeekLab/GeoGeekLab.github.io`.

The bundled demonstration references a pinned Sentinel-2 preview from Global Fishing Watch. Upstream material retains its own terms.
