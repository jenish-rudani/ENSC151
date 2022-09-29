##########################################
# Copyright (c) 2022 Jenish Rudani, jrr7 (at) sfu.ca and W. Craig Scratchley, craig_scratchley (at) alumni.sfu.ca
# School of Engineering Science, SFU, BC, Canada  V5A 1S6
# Copying and distribution of this file, with or without modification,
#     are permitted in any medium without royalty provided the copyright
#     notice and this notice are preserved.  Please share any modifications
#     with the authors.
##########################################

#!/bin/bash

IP=$(multipass info primary | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}")
echo "Multipass Primary Instance IP Address is: $IP"

echo "Opening Eclipse..."
ssh -Y ubuntu@$IP /home/ubuntu/eclipse/eclipse