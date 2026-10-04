# Image → Trace

**Raster field · scalar transformation · level-set extraction · vector topology**

*IMAGE → TRACE* is a raster-analysis instrument for converting sampled image structure into vector geometry. It derives scalar response surfaces from image values and extracts level-set geometry with Marching Squares.

<p align="center">
  <a href="https://geogeeklab.github.io/image-to-trace/">
    <img src="https://geogeeklab.github.io/image-to-trace/assets/instrument.png" alt="Image to Trace instrument" width="720">
  </a>
</p>

## Instrument capabilities

- **Load a raster source.** Use the supplied Sentinel-2-derived preview or import a browser-supported JPEG, PNG, or WebP image.
- **Derive a scalar field.** Transform image values into luminance, edge-response, or chroma-based scalar surfaces.
- **Control sampling density.** Change the evaluation grid used for contour extraction.
- **Set contour thresholds.** Define one or multiple scalar levels.
- **Extract vector geometry.** Apply Marching Squares to identify level crossings and construct linework.
- **Compare and export results.** Toggle raster and vector views and export PNG or SVG output.

## Analytical model

Let the input image be represented as a raster field **I(x, y)**. The instrument transforms that field into a scalar response **f(x, y)** using luminance, edge, or chroma operators. Contours approximate level sets of the form **f(x, y) = c**, where **c** is a selected threshold or contour level.

The extracted geometry depends on the source field, sampling lattice, and selected contour levels.

## Processing chain

| Stage | Operation | Spatial consequence |
| --- | --- | --- |
| Raster input | Sentinel-2 preview or user-selected JPEG/PNG/WebP | Defines the source sampling grid and pixel domain |
| Scalar transformation | Luminance, edge, or chroma response | Converts multichannel image values into a scalar surface |
| Resampling | User-controlled sampling density | Sets effective grid spacing and contour detail |
| Level selection | Threshold or multi-level contour specification | Selects scalar values represented by isolines |
| Vectorization | Marching Squares cell interpolation | Converts level crossings into connected line segments |
| Output | SVG / PNG export | Produces vector geometry or rendered raster composition |

## Remote-sensing source

The default scene is a version-pinned preview derived from [Copernicus Sentinel-2](https://www.esa.int/Applications/Observing_the_Earth/Copernicus/Sentinel-2). The preview asset is sourced through the [Global Fishing Watch frontend repository](https://github.com/GlobalFishingWatch/frontend).

Analysis uses the image values available to the browser. Luminance, color contrast, edge response, threshold selection, and sampling density control the resulting contour geometry.

## Analysis parameters

- **Field definition** selects the scalar quantity to contour.
- **Sampling density** sets the discrete evaluation grid.
- **Level spacing** selects the scalar values converted to vector features.

These parameters control line density, connectivity, small-feature retention, and boundary complexity.

## Instrument access

**Live instrument:** https://geogeeklab.github.io/image-to-trace/

Source runtime: [`GeoGeekLab/GeoGeekLab.github.io`](https://github.com/GeoGeekLab/GeoGeekLab.github.io)  
Pinned revision: [`SOURCE.json`](./SOURCE.json)  
Production contract: [`PRODUCTION.md`](./PRODUCTION.md)

*GeoGeek note — every contour begins with a field definition and a sampling decision.*
