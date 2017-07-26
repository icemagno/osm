#! /bin/sh

export ftp_proxy="http://06902331758:nextstep@proxy-1dn.mb:6060/"
export http_proxy="http://06902331758:nextstep@proxy-1dn.mb:6060/"
export https_proxy="https://06902331758:nextstep@proxy-1dn.mb:6060/"

cd /home/apolo/srtm/

phyghtmap --pbf –no-zero-contour –output-prefix contour –line-cat=500,100 –step=20 --jobs=8 --srtm=1 --a -65.500:-12.039:-64.512:-9.536 --earthdata-user=icemagno --earthdata-password=Antares2#2

		 
			 
