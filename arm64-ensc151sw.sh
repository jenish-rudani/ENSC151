##########################################
# Copyright (c) 2022 Jenish Rudani, jrr7 (at) sfu.ca and W. Craig Scratchley, craig_scratchley (at) alumni.sfu.ca
# School of Engineering Science, SFU, BC, Canada  V5A 1S6
# Copying and distribution of this file, with or without modification,
#     are permitted in any medium without royalty provided the copyright
#     notice and this notice are preserved.  Please share any modifications
#     with the authors.
##########################################
#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

######### Homebrew
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
if ! command -v brew &> /dev/null
then
  echo -e "${RED}Homebrew could not be found${NC}"
  echo -e "${GREEN}Installing Homebrew... (You will need Enter your PASSWORD and press ENTER)${NC}"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo -e "${RED}Homebrew is Already Installed.${NC} [SKIPPING]"
fi

######### brew git Installation
if ! [[ -f "/opt/homebrew/bin/git" ]]
then
  echo -e "${RED}brew git could not be found"
  echo -e "Installing brew git... (Enter your PASSWORD if needed)"
  brew install git
else
  echo -e "${RED}brew git is Already Installed.${NC} [SKIPPING]"
fi

######### Multipass Installation
if ! command -v multipass &> /dev/null
then
  echo -e "${RED}multipass could not be found"
  echo -e "Installing multipass... (Enter your PASSWORD when requested)"
  brew install multipass
else
  echo -e "${RED}Multipass is Already Installed.${NC} [SKIPPING]"
fi
 
mkdir -p ~/Public/VMsf-22_04
SHARED_DIR_PATH=~/Public/VMsf-22_04
SHELL_SCRIPT_TO_RUN_ON_INSTANCE=./instanceCommandsClean.sh
SSH_DIR_PATH=~/.ssh


######### Shared Directory
if [ -d $SHARED_DIR_PATH ] 
then
  echo -e "${RED}Directory $SHARED_DIR_PATH exists.${NC} [SKIPPING]" 
else
  echo -e "Creating an Empty Directory: $SHARED_DIR_PATH "
  mkdir $SHARED_DIR_PATH
fi

# Copy these files
cp $SHELL_SCRIPT_TO_RUN_ON_INSTANCE $SHARED_DIR_PATH
cp ./postEclipseInstallationCommands.sh $SHARED_DIR_PATH
cp -R src $SHARED_DIR_PATH
cp -R eclipse-workspace_22-06 $SHARED_DIR_PATH
chmod a+x startEclipse.command
cp startEclipse.command ~/Desktop/
######### SSH Directory
if [ -d $SSH_DIR_PATH ] 
then
  echo -e "${RED}Directory $SSH_DIR_PATH exists.${NC} [SKIPPING]" 
else
  echo "Creating an Empty Directory: $SSH_DIR_PATH "
  mkdir $SSH_DIR_PATH
fi

########## SSH KeyGen
RSA_KEY_FILE_PATH=~/.ssh/id_rsa
if [[ -f "$RSA_KEY_FILE_PATH" ]]; then
  echo -e "${RED}$RSA_KEY_FILE_PATH exists.${NC}"
else
  ssh-keygen -f $RSA_KEY_FILE_PATH -t rsa -b 2048 -N ''
fi

######### Xquartz
if ! command -v xquartz &> /dev/null
then
  echo -e "${RED}Xquartz could not be found${NC}"
  echo -e "${GREEN}Installing Xquartz... (Enter your PASSWORD [if asked] and press ENTER)${NC}"
  brew install --cask xquartz
#  exit
else
  echo -e "${RED}Xquartz is Already Installed.${NC} [SKIPPING]"
  echo -e "Sleeping for 10 seconds"
  sleep 10 # is 10 seconds sleep here going to work? 
           #    It seems to take time for Multipass to be available after it is installed.
fi

########## Check if Primary Instance installed on Multipass 
multipass list | grep 'primary' &> /dev/null
if [ $? == 0 ]; then
  echo -e "${RED}primary instance is already installed.${NC} [Need to Purge it]"
  echo -e "${RED}Purging 'primary instance'${NC}"
  multipass delete -p primary
fi

########## Create Primary Instances
echo -e "${GREEN}Creating 'primary instance'${NC}"
multipass launch 22.04 -n primary -c 4 -m 4G -d 50G 

multipass exec primary -- bash -c "echo `cat $RSA_KEY_FILE_PATH.pub` >> ~/.ssh/authorized_keys"

# ########## Mount $HOME on the instance
multipass mount $SHARED_DIR_PATH primary:/home/ubuntu/VMsf

# ########## Execute SHELL_SCRIPT_TO_RUN_ON_INSTANCE on Instance
multipass exec primary -- source /home/ubuntu/VMsf/instanceCommandsClean.sh

# ########## Updating and Upgrading ubuntu instance
multipass exec primary -- sudo apt-mark hold linux-image-generic linux-headers-generic grub-efi*
multipass exec primary -- sudo apt update
multipass exec primary -- sudo apt upgrade -y

# ########## Reboot Primary Instance for upgrade to take effect
multipass restart primary

# ########## Installing necessary packages inside multipass primary instance
multipass exec primary -- sudo apt install -y g++ aptitude aptitude-doc-en gcc-doc  binutils-doc make make-doc git  git-doc valgrind valgrind-dbg systemtap systemtap-doc linux-tools-generic linux-tools-common errno cpp-doc gdb-doc libboost-test-dev libboost-doc gtk3-binver-3.0.0 libgtk-3-dev
# multipass exec primary -- sudo snap set system refresh.retain=2
multipass exec primary --working-directory /home/ubuntu -- sudo snap install cmake --classic
multipass exec primary --working-directory /home/ubuntu -- sudo apt-get install -y dpkg-dev --no-install-recommends


# # don't need this
# # multipass exec primary -- sudo apt install -y openjdk-8-jre # // do we need more (or less), like (only) openjdk-8-jre-headless


########## Installing Eclipse

multipass exec primary --working-directory /home/ubuntu/VMsf -- wget https://eclipse.mirror.rafal.ca/technology/epp/downloads/release/2022-12/R/eclipse-cpp-2022-12-R-linux-gtk-aarch64.tar.gz
multipass exec primary --working-directory /home/ubuntu -- tar -xvzf VMsf/eclipse-cpp-2022-12-R-linux-gtk-aarch64.tar.gz >> tar.log
multipass exec primary --working-directory /home/ubuntu -- rm VMsf/eclipse-cpp-2022-12-R-linux-gtk-aarch64.tar.gz

# ########## Changin default user space in Eclipse
multipass mount $SHARED_DIR_PATH primary:/home/ubuntu/VMsf
multipass exec primary --working-directory /home/ubuntu/VMsf -- source /home/ubuntu/VMsf/postEclipseInstallationCommands.sh
echo ""
echo ""
echo ""
echo "###### RESRTART YOUR MACBOOK ######"