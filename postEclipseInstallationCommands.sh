##########################################
# Copyright (c) 2022 Jenish Rudani, jrr7 (at) sfu.ca and W. Craig Scratchley, craig_scratchley (at) alumni.sfu.ca
# School of Engineering Science, SFU, BC, Canada  V5A 1S6
# Copying and distribution of this file, with or without modification,
#     are permitted in any medium without royalty provided the copyright
#     notice and this notice are preserved.  Please share any modifications
#     with the authors.
##########################################


cd ~/eclipse
sed -i 's/-Dosgi.instance.area.default=@user.home\/eclipse-workspace/-Dosgi.instance.area.default=\/home\/ubuntu\/VMsf\/eclipse-workspace_22-06/g' eclipse.ini

cd ~/VMsf/src/CPlusPlus20ForProgrammers-master/examples/libraries
find ./ -name 'CMakeCache.txt' -delete
cd BigNumber
cmake .
make
make install 
make clean
cd ../GSL
cmake .
make
sudo make install
make clean
cd ../fmt
cmake .
make
sudo make install
make clean
cmake . -DCMAKE_BUILD_TYPE=Debug
make
sudo make install
make clean
#cd ../generator
#mkdir build
#cd build
#cmake ..
#make
#sudo make install
#make clean
#cd ..
cd ../miniz-cpp
#make sure that std:: is removed from in front of memset and strlen
sudo cp zip_file.hpp /usr/local/include
# ...
cd ../rapidcsv
cmake .
make
sudo make install
make clean
cd ..