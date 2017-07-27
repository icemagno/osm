#! /bin/sh

mv ./work/* ./donepbf/

cd pbf
mv `ls | head -500` ../work/

cd ..

osmium merge --verbose work/*.osm.pbf -o ./consolidado.osm.pbf --overwrite






