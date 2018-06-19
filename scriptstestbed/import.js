/* eslint-disable no-console */

const {exec} = require('child_process');
const fs = require('fs');

const dbname = process.argv[2] !== 'null' && process.argv[2] || 'daraa';
const host = process.argv[3] !== 'null' && process.argv[3] || 'localhost';
const port = process.argv[4] !== 'null' && process.argv[4] || '5432';
const user = process.argv[5] !== 'null' && process.argv[5] || 'postgres';
const password = process.argv[6] !== 'null' && process.argv[6] || 'postgres';
const ogr2ogr = process.argv[7] !== 'null' && process.argv[7] || 'C:/OSGeo4W64/bin/ogr2ogr';  // bin path or ogr2ogr

const PG = `dbname='${dbname}' host='${host}' port='${port}' user='${user}' password='${password}'`;

fs.readdir('./extended', (err, files) => {
    if (err) {
        console.log('no folder');
        return;
    }
    files.forEach(file => {
        const name = file.split(/\./)[0];
        exec(`${ogr2ogr} -append -f "PostgreSQL" PG:"${PG}" ./extended/${name}.json -nln ${name}`, (error, stdout, stderr) => {
            if (error) {
                console.error(`exec error: ${error}`);
                return;
            }
            console.log(name);
            console.log(`stdout: ${stdout}`);
            console.log(`stderr: ${stderr}`);
        });
    });
});
