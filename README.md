# Image → Trace

**Raster field · scalar transformation · level-set extraction · vector topology**

*IMAGE → TRACE* is a raster-analysis instrument for examining how sampled image structure becomes explicit vector geometry. It treats an image as a two-dimensional discrete field, derives scalar response surfaces from pixel values, and extracts level-set geometry with Marching Squares to expose the transition from raster sampling to vector topology.

<p align="center">
  <a href="https://geogeeklab.github.io/image-to-trace/">
    <img src="https://geogeeklab.github.io/image-to-trace/assets/instrument.png" alt="Image to Trace instrument" width="720">
  </a>
</p>

## Analytical model

Let the input image be represented as a raster field **I(x, y)**. The instrument transforms that field into a scalar response **f(x, y)** using luminance, edge, or chroma operators. Contours are then constructed as approximations to level sets of the form **f(x, y) = c**, where **c** is a user-selected threshold or contour level.

This workflow connects image processing with core GIS concepts: raster sampling, scalar-field representation, isoline construction, raster-to-vector conversion, topology, scale, and cartographic generalization. The geometry of the extracted vectors depends on both the image-derived field and the sampling lattice on which that field is evaluated.

## Processing chain

| Stage | Operation | Spatial consequence |
| --- | --- | --- |
| Raster input | Sentinel-2 preview or user-selected JPEG/PNG/WebP | Defines the source sampling grid and rendered pixel domain |
| Scalar transformation | Luminance, edge, or chroma response | Converts multichannel image values into a scalar surface |
| Resampling | User-controlled sampling density | Changes effective grid spacing and contour detail |
| Level selection | Threshold or multi-level contour specification | Defines the scalar values represented by extracted isolines |
| Vectorization | Marching Squares cell interpolation | Converts raster level crossings into connected line segments |
| Output | SVG / PNG export | Preserves vector geometry or rendered raster composition |

## Remote-sensing context

The default scene is a version-pinned preview derived from [Copernicus Sentinel-2](https://www.esa.int/Applications/Observing_the_Earth/Copernicus/Sentinel-2), whose Multispectral Imager acquires 13 spectral bands for land and coastal observation. The preview asset is sourced through the [Global Fishing Watch frontend repository](https://github.com/GlobalFishingWatch/frontend).

Within *IMAGE → TRACE*, analysis operates on the rendered image values presented to the browser. The instrument therefore focuses on image-derived morphology and vector abstraction: how brightness, color contrast, edge response, threshold selection, and sampling density control the geometry of extracted contours.

## GIS interpretation

Three parameters are especially important for reproducible contour extraction:

- **field definition** determines the scalar quantity being contoured;
- **sampling density** determines the discrete spatial support of the field; and
- **level spacing** determines which portions of the scalar range become vector features.

Changing any of these parameters can alter line density, connectivity, small-feature retention, and apparent boundary complexity. In GIS terms, vectorization is therefore a scale-dependent transformation from a sampled field to a topological line representation, not merely a graphical tracing operation.

## Instrument access

**Live instrument:** https://geogeeklab.github.io/image-to-trace/

*IMAGE → TRACE* is a public entrypoint to the production workbench maintained in [`GeoGeekLab/GeoGeekLab.github.io`](https://github.com/GeoGeekLab/GeoGeekLab.github.io). [`SOURCE.json`](./SOURCE.json) records the pinned upstream revision, and [`PRODUCTION.md`](./PRODUCTION.md) defines sample provenance, processing semantics, and deployment behavior.

*GeoGeek note — every contour begins with a field definition and a sampling decision.*
