# OGC testbed14 styles

GeoServer data directory with styles for ogc-testbed14.

This data directory has been generated with

```
GeoServer 2.14-SNAPSHOT
Build Date 05-Jun-2018 08:00
```

Credentials are standard (no changes from standard build)

Daraa store need username and password, if different from standard (current postgres/postgres)

# Import process

open terminal in ./scriptstestbed folder and execute needed scripts

`npm install` is required to download related packages

remove placeholder.txt files from ./extended and ./out folders

tools:

`node v6.0.0`

`npm v3.8.6`

`ogr2ogr GDAL 2.2.4, released 2018/03/19`

`postgres (PostgreSQL) 10.1`

`shp2pgsql`

# extend.js
This script creates shapefiles from gdb file with additional columns genereted from osm tags.
OSM tags need to be declared and mapped with the name of column in config.json:

```
{
    "codes": {
        "landuse": "OSM_T_LAN",
        "waterway": "OSM_T_WAT",
        "place": "OSM_T_PLA",
        "is_in": "OSM_T_IIN",
        "amenity": "OSM_T_AME",
        "religion": "OSM_T_REL",
        "power": "OSM_T_POW",
        "name:en": "OSM_T_ENG"
    }
}
```
shapefiles could be find in ./shapefiles folder of data_dir

```
node ./extend.js fileSrc targetSrs srcSrs ogr2ogr
```
- fileSrc: name of file with extension, must be placed in ./src folder, default 'layers.gdb'
- targetSrs: srs of destination, default 'EPSG:3857'
- srcSrs: srs of source, default 'EPSG:4326'
- ogr2ogr: bin path or 'ogr2ogr', default 'C:/OSGeo4W64/bin/ogr2ogr'

# import shapefiles with shp2pgsql
if you need to work with postgres/postigis you can import generated shapefiles with shp2pgsql

or `shp2pgsql-gui.exe` in Windows, could be found in `path-to-PostgreSQL\version\bin\postgisgui\`

- geometry name: the_geom
- preserve case of columns

# import.js deprecated (not needed)
use shp2pgsql instead this method doesn't preserve case of columns.
Columns cases are important to assign styles in css and sld files.

```
node ./import.js dbname host port user password ogr2ogr
``` 
- dbname: name of database with postgis extension, default 'ows'
- host: host of postegres, default 'localhost'
- host: port of postegres, default '5432
- user: username, default 'postgres'
- password: password, default 'postgres'
- ogr2ogr: bin path or 'ogr2ogr', default 'C:/OSGeo4W64/bin/ogr2ogr'

# import raster data

Configure properly the file ./raster/datastore.properties with database name, schema, username, password, port and host.
Add following files to ./raster folter

- ls8_20170309.TIF
- ls8_20170325.TIF
- ls8_20170410.TIF
- ls8_20170426.TIF
- ls8_20170512.TIF
- ls8_20170528.TIF
- ls8_20170613.TIF
- ls8_20170629.TIF

create a new ImageMosaic store selecting the raster folder.
Apply landsat8_sld style to the published raster layer.
Now the raster layer is ready.