# Image → Trace

**Raster field · image-derived scalar surface · isoline extraction · vector abstraction**

Image → Trace is a raster-analysis instrument for examining how continuous-looking image structure becomes explicit vector geometry. It derives scalar fields from image values, extracts isolines with Marching Squares, and exposes the transition from sampled raster values to contour topology.

![Image → Trace instrument](https://geogeeklab.github.io/image-to-trace/assets/instrument.png)

## Analytical workflow

The instrument treats an image as a two-dimensional sampled field. Users can derive luminance, edge, or chroma measures from the rendered pixels, select thresholds or contour levels, vary sampling density, compare raster and vector representations, and export the resulting linework as SVG or PNG.

This workflow connects image processing with core GIS concepts: raster-to-vector conversion, scalar-field representation, isoline construction, sampling resolution, topology, and cartographic generalization.

## Remote-sensing context

The default scene is a version-pinned Sentinel-2 preview sourced from the Global Fishing Watch frontend repository. Within this instrument it functions as display imagery: scalar values are computed from rendered pixels and used to study contour extraction and visual abstraction. Local JPEG, PNG, and WebP images can also be processed entirely in the browser.

| Stage | Operation |
| --- | --- |
| Raster input | Sentinel-2 preview or user-selected image |
| Field derivation | Luminance, edge, or chroma scalar surface |
| Vectorization | Marching Squares isoline extraction |
| Comparison | Raster, contour, overlay, and mask views |
| Output | SVG and PNG export |

The key analytical variable is the scalar field chosen before vectorization. Threshold, level spacing, and sampling density control the geometry that emerges from the same raster source.

## Instrument access

**Live instrument:** https://geogeeklab.github.io/image-to-trace/

The repository is an entrypoint to the production workbench maintained in `GeoGeekLab/GeoGeekLab.github.io`. `SOURCE.json` records the pinned source revision and `PRODUCTION.md` defines sample provenance, processing semantics, and deployment behavior.

*GeoGeek note — every contour begins with a field definition.*
