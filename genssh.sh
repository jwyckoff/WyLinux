#!/bin/bash

sshPath="$HOME/.ssh" 
echo "$sshPath"
cd $HOME/.ssh || exit


# mkdir '~/.ssh'
ssh-keygen -t ed25519 -C "jason@jasonwyckoff.com" -f 'jdw'
# cat jdw.pub
# cd ~