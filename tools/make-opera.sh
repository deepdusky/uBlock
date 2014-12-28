#!/bin/bash
#
# This script assumes a linux environment

echo "*** uBlock.opera: Creating web store package"
echo "*** uBlock.opera: Copying files"

DES=dist/build/uBlock.opera
rm -r $DES
mkdir -p $DES

cp -R assets $DES/
rm $DES/assets/*.sh
cp -R src/css $DES/
cp -R src/img $DES/
cp -R src/js $DES/
cp -R src/lib $DES/
cp -R src/_locales $DES/
cp src/*.html $DES/
cp platform/chromium/*.js $DES/js/
cp platform/chromium/manifest.json $DES/
cp LICENSE.txt $DES/

rm -r $DES/_locales/el
rm -r $DES/_locales/hi
rm -r $DES/_locales/mr
rm -r $DES/_locales/vi

echo "*** uBlock.opera: Package done."
