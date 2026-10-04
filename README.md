# Image → Trace

**Raster / scalar field / contour abstraction**

Image → Trace is a visual-analysis workbench for turning an image into an explicit scalar field and then into contour geometry. It is built to expose the transformation steps that are often hidden when an image is converted into clean vector form.

> **GeoGeek principle:** Before a line becomes a shape, ask what field produced it.

## From image to trace

```text
image
  ↓
scalar field
  ↓
thresholds
  ↓
Marching Squares
  ↓
vector traces
```

The workbench can derive luminance, edge, or chroma fields from an image. Contours are then extracted at selected levels and compared with the source raster through trace, overlay, mask, and comparison views.

This makes the abstraction process inspectable instead of presenting the resulting SVG as if it were inherent in the source image.

## Inputs and outputs

The default observation uses a version-pinned Sentinel-2 preview sourced from the Global Fishing Watch frontend repository. Users can also select local JPEG, PNG, or WebP images; those files are processed in the browser rather than uploaded by this project.

Output can be exported as SVG or PNG for further inspection and composition.

## What a contour means here

A line produced by this instrument represents an equal value in an image-derived scalar field. Its meaning depends on the selected field and threshold.

It is **not automatically**:

- a terrain contour;
- an elevation measurement;
- a shoreline;
- an object boundary;
- a physically measured isoline.

Those interpretations require evidence that is outside the image-to-trace operation itself.

## Use the workbench to examine

- how field choice changes extracted structure;
- how threshold spacing changes visual complexity;
- where raster texture survives or disappears during abstraction;
- when a vector trace begins to suggest more certainty than the source image supports.

## Operations

**Public instrument**  
https://geogeeklab.github.io/image-to-trace/

The entry repository loads the production workbench from `GeoGeekLab/GeoGeekLab.github.io`, pinned to commit `d949bd75870bfd49f6d12b297e6cca02de107f9c`.

See [`PRODUCTION.md`](./PRODUCTION.md) for sample provenance, processing behavior, and interpretation limits.

For local inspection:

```bash
python -m http.server 8000
```

Network access is required for the pinned runtime and default sample. User-selected images remain local to the browser.

---

Part of the **GeoGeek Observatory** — trace the transformation, not just the outline.
