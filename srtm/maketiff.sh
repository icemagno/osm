#! /bin/sh

mkdir -p result/hgt/SRTM1v3.0/

for hgtfile in hgt/SRTM1v3.0/*.hgt; do

gdaldem hillshade -co TILED=YES -co compress=lzw -s 111120 -z 5 -az 315 -combined -compute_edges $hgtfile result/$hgtfile.tif

done

ls result/hgt/SRTM1v3.0/* > list_of_files.txt

gdalbuildvrt -input_file_list list_of_files.txt -overwrite -addalpha imagens.vrt






