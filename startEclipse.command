#!/bin/bash

IP=$(multipass list | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}")
echo "Multipass Primary Instance IP Address is: $IP"

echo "Opening Eclipse..."
ssh -Y ubuntu@$IP /home/ubuntu/eclipse/eclipse