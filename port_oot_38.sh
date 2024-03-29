#!/bin/bash

PACKDIR=$1
PACKDIR=${PACKDIR::-1}
MODNAME=${PACKDIR:3}

cd $PACKDIR

gr_modtool update --complete

cd ../

mkdir port38

cd port38

gr_modtool newmod $MODNAME

cd ../

cp -nrp $PACKDIR/include/$MODNAME/ port38/$PACKDIR/
cp -nrp $PACKDIR/grc/ port38/$PACKDIR/
cp -nrp $PACKDIR/lib/ port38/$PACKDIR/
cp -nrp $PACKDIR/lib/ port38/$PACKDIR/
cp -nrp $PACKDIR/swig/ port38/$PACKDIR/
cp -nrp $PACKDIR/docs/ port38/$PACKDIR/
cp -nrp $PACKDIR/apps/ port38/$PACKDIR/
cp -nrp $PACKDIR/examples/ port38/$PACKDIR/
cp -nrp $PACKDIR/.git port38/$PACKDIR/
cp $PACKDIR/README.md port38/$PACKDIR/README.md
cp $PACKDIR/MANIFEST.md port38/$PACKDIR/MANIFEST.md
cp $PACKDIR/LICENSE port38/$PACKDIR/LICENSE

echo "$PACKDIR moved to 3.8 structure"
echo "Located in ./port38/$PACKDIR"
echo "Now check Python modules and lib/CmakeLists.txt"
echo "Then build and test till complete"
