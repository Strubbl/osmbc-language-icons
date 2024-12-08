#!/bin/bash
set -eux

cp preview-template.html preview.html

for i in icons-with-shapes/*.svg
do
  fn_clean=$(basename -s .svg $i)
  fn=$(basename $i)
  inkscape --export-type=svg --export-plain-svg --export-filename=export/$fn $i
  sed -i "s/width=\"180\"/width=\"18\"/g" export/$fn
  sed -i "s/height=\"180\"/height=\"18\"/g" export/$fn
  cp export/$fn export/$fn_clean-green.svg
#  cp export/$fn export/$fn_clean-blue.svg
  icon_default="<img src=\"export/${fn_clean}.svg\" />"
  icon_green="<img src=\"export/${fn_clean}-green.svg\" />"
  icon_default_40="<img src=\"export/${fn_clean}.svg\" width=40 />"
  icon_green_40="<img src=\"export/${fn_clean}-green.svg\" width=40/>"
  sed -i "s|ICON_DEFAULT_0|${icon_default}\nICON_DEFAULT_0|" preview.html
  sed -i "s|ICON_GREEN_0|${icon_green}\nICON_GREEN_0|" preview.html
  sed -i "s|ICON_DEFAULT_40|${icon_default_40}\nICON_DEFAULT_40|" preview.html
  sed -i "s|ICON_GREEN_40|${icon_green_40}\nICON_GREEN_40|" preview.html
done

sed -i "s|ICON_DEFAULT_0||" preview.html
sed -i "s|ICON_GREEN_0||" preview.html
sed -i "s|ICON_DEFAULT_40||" preview.html
sed -i "s|ICON_GREEN_40||" preview.html


#for i in export/*-blue.svg
#do
#  sed -i 's/#444444/#00b7ff/g' $i
#  sed -i 's/#888888/#00b7ff/g' $i
#done

for i in export/*-green.svg
do
  sed -i "s/#444444/#00b400/g" $i
  sed -i "s/#888888/#00b400/g" $i
done

