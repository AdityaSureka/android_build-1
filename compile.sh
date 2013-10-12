# A simple script to build easily Illusion
# By: SferaDev & VlikeBanana
echo "Welcome $USER"

read -p "Do you want a clean build (yes/no) " OPTION

case $OPTION in
"yes")
source build/envsetup.sh
lunch
rm -rf out/
make illusion zip -j6
;;
"no")
source build/envsetup.sh
lunch
make illusion zip -j6
;;
esac
