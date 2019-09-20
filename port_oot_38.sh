
packdir = $1

modname = packdir:3

cd $packdir

gr_modtool update --complete

cd ../

mkdir port38

cd port38

gr_modtool newmod $modname

cd ../

cp $packdir/include/$modname/* port38/$packdir/include/$modname/
cp $packdir/grc?* port38/$packdir/grc/
cp $packdir/lib/*.c port38/$packdir/lib/
cp $packdir/lib/*.h port38/$packdir/lib/
cp $packdir/swig/*.i port38/$packdir/swig/
cp $packdir/docs/* port38/$packdir/docs/
cp $packdir/apps/* port38/$packdir/apps/
cp $packdir/example/* port38/$packdir/example/
cp $packdir/README.md port38/$packdir/README.md
cp $packdir/MANIFEST.md port38/$packdir/MANIFEST.md
cp $packdir/LICENSE port38/$packdir/LICENSE

echo "$packdir moved to 3.8 structure"
echo "Located in ./port38/$packdir"
echo "Now check Python modules and lib/CmakeLists.txt"
echo "Then build and test till complete"
