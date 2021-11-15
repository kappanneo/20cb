# 20th Century Boys
#### _**ad hoc**_ scans to PDF converter

## dependencies
- [make](https://www.gnu.org/software/make/)
- [gm](http://www.graphicsmagick.org) (GraphicsMagick)  [[docs](http://www.graphicsmagick.org/GraphicsMagick.html)]

## usage
download [_**that specific**_](src/magnet.txt) torrent file into `src/`, 
then just

`$ make`

for more customization take a look at the [makefile](makefile)

## notes
 - the default cover size is set to 890x1200 to match the *actual* Pocketbook Color screen resolution \
   change it to better fit your target device
 - the resolution of the generated PDF files depends on the resolution of the scans \
   you could normalize it using a similar approach to the one I used for the cover but I'm not going to do that C: