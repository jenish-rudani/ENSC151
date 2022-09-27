cd ~/eclipse
sed -i 's/-Dosgi.instance.area.default=@user.home\/eclipse-workspace/-Dosgi.instance.area.default=\/home\/ubuntu\/VMsf\/eclipse-workspace-22-06/g' eclipse.ini

cd ~/VMsf/src/CPlusPlus20ForProgrammers-master/examples/libraries
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