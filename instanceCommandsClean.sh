##########################################
# Copyright (c) 2022 Jenish Rudani, jrr7 (at) sfu.ca and W. Craig Scratchley, craig_scratchley (at) alumni.sfu.ca
# School of Engineering Science, SFU, BC, Canada  V5A 1S6
# Copying and distribution of this file, with or without modification,
#     are permitted in any medium without royalty provided the copyright
#     notice and this notice are preserved.  Please share any modifications
#     with the authors.
##########################################


# for perf...
# To make this setting permanent, edit /etc/sysctl.conf too, e.g.:
echo '#Added by W. Craig Scratchley at SFU:' | sudo tee -a /etc/sysctl.conf
echo 'kernel.perf_event_paranoid = -1' | sudo tee -a /etc/sysctl.conf
echo 'kernel.kptr_restrict = 0' | sudo tee -a /etc/sysctl.conf


# update /etc/environment -- add entries for BOOST_INCLUDE and BOOST_LIB, etc ...
echo 'BOOST_INCLUDE="/usr/include"' | sudo tee -a /etc/environment
echo 'BOOST_LIB="/usr/lib/aarch64-linux-gnu"' | sudo tee -a /etc/environment
echo 'BOOST_POSTFIX=""' | sudo tee -a /etc/environment
echo 'BOOST_DEBUG_POSTFIX=""' | sudo tee -a /etc/environment
echo '# to enable reverse debugging with gdb' | sudo tee -a /etc/environment
echo 'LD_BIND_NOW=1' | sudo tee -a /etc/environment

sudo ln -s /home/ubuntu /home/xubuntu

#  we need to run this script later in the process, after eclipse is insstalled
#  update /home/ubuntu/eclipse so that 
#-Dosgi.instance.area.default=@user.home/eclipse-workspace
#  becomes
#-Dosgi.instance.area.default=/home/ubuntu/VMsf/eclipse-workspace-22-06

