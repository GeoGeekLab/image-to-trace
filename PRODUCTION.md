# Production contract

`image-to-trace` is the public entrypoint for the production *IMAGE → TRACE* instrument.

## Runtime

- Source repository: `GeoGeekLab/GeoGeekLab.github.io`
- Tested source revision: `064ce2c718499fc26a744a9e58cad09d97a323fb`
- Production channel: `https://geogeeklab.github.io/`
- Shared bootstrap: `/core/observatory-entry.js`
- Workbench runtime: `/figure-analysis-workbench.js`
- Provider control: `/core/provider-stability.js` + `/core/data-supply.js`

The entrypoint uses the main Observatory origin as its document base, so the production sample raster and runtime-relative assets resolve to the same paths used by the main Lab.

## Raster and vector processing

The production workbench loads the maintained Sentinel-2-derived sample from `/assets/lab/sentinel2.jpg`, supports browser-selected raster inputs, derives scalar fields, extracts level sets with Marching Squares, and exports rendered/vector output through the main runtime.

## Release checks

The repository validates the source revision, shared bootstrap reference, Chromium instrument mount, absence of `.instrument-error`, provider/Data Supply installation, instrument screenshot, Pages deployment, and the deployed public endpoint.
