/* eslint-disable no-console */

const {exec} = require('child_process');
const {trim} = require('lodash');
const fs = require('fs');
const assign = require('object-assign');

const fileSrc = process.argv[2] !== 'null' && process.argv[2] || 'layers.gdb';
const targetSrs = process.argv[3] !== 'null' && process.argv[3] || 'EPSG:3857';
const srcSrs = process.argv[4] !== 'null' && process.argv[4] ||  'EPSG:4326';
const ogr2ogr = process.argv[5] !== 'null' && process.argv[5] || 'C:/OSGeo4W64/bin/ogr2ogr'; // bin path or  ogr2ogr

fs.readFile(`./config.json`, 'utf8', (errConfig, configTxt) => {

    const {codes = {}} = JSON.parse(configTxt);

    exec(`ogrinfo -ro ./src/${fileSrc}`, (error, stdout, stderr) => {
        if (error) {
            console.error(`exec error: ${error}`);
            return;
        }
        const list = stdout.split(/\d+\:/).filter((val, idx) => idx > 0).map(val => val.trim().split(' ')[0]);
        console.log(`stdout: ${list}`);
        console.log(`stderr: ${stderr}`);

        list.forEach((item) => {
            const name = item.toLocaleLowerCase();
            exec(`${ogr2ogr} -f GeoJSON -s_srs ${srcSrs} -t_srs ${targetSrs} ./out/${name}.json ./src/${fileSrc} ${name}`, (error, stdout, stderr) => {
                if (error) {
                    console.error(`exec error: ${error}`);
                    return;
                }
                console.log(`stdout: ${stdout}`);
                console.log(`stderr: ${stderr}`);
                
                fs.readFile(`./out/${name}.json`, 'utf8', (err, text) => {
                    if (err) {
                        console.error(`read error: ${err}`);
                        return;
                    }
                    const data = JSON.parse(text);
                    const features = data.features.map(feature => {
                        if (feature.properties.ZI006_MEM === 'No Information' || !feature.properties.ZI006_MEM) {
                            return assign({}, feature);
                        }
                        const osmData = JSON.parse(feature.properties.ZI006_MEM.replace(/\<OSM\>|\<\/OSM\>/g, ''));
                        const tags = osmData.tags.split('", "').reduce((newTags, tag) => {
                            const param = tag.split('=>').map(tg => trim(tg, '"'));
                            return assign({}, newTags, codes[param[0]] ? {[codes[param[0]]]: param[1]} : {});
                        }, {});
                        const properties = assign({}, feature.properties, tags);
                        return assign({}, feature, {properties})
                    });
                    const value = assign({}, data, {features});
                    
                    fs.writeFile(`./extended/${name}.json`, JSON.stringify(value), (er) => {
                        if(er) {
                            return console.log(er);
                        }
                        console.log(`saved ${name}.json`);
                        exec(`${ogr2ogr} -f "ESRI Shapefile" ../shapefiles/${name}.shp ./extended/${name}.json`, (errorShp, stdoutShp, stderrShp) => {
                            if (errorShp) {
                                console.error(`exec error: ${error}`);
                                return;
                            }
                            console.log(`stdout: ${stdoutShp}`);
                            console.log(`stderr: ${stderrShp}`);
                            console.log(`saved ${name}.shp`);
                        });
                    });
                });
            });
        })
    });

});
