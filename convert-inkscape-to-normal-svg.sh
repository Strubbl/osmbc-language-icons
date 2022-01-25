#!/bin/bash
set -eux

for i in tmpl/*.svg
do
  fn_clean=$(basename -s .svg $i)
  fn=$(basename $i)
  inkscape --export-type=svg --export-plain-svg -w 18 -h 18 --export-filename=export/$fn $i
  sed -i 's/width="180"/width="18"/g' export/$fn
  sed -i 's/height="180"/height="18"/g' export/$fn
  cp export/$fn export/$fn_clean-green.svg
  cp export/$fn export/$fn_clean-blue.svg
done

for i in export/*-blue.svg
do
  sed -i 's/#444444/#00b7ff/g' $i
  sed -i 's/#888888/#00b7ff/g' $i
done

for i in export/*-green.svg
do
  sed -i 's/#444444/#00b400/g' $i
  sed -i 's/#888888/#00b400/g' $i
done

