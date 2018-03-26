#!/bin/bash

mkdir -p $HOME/.spectrecoin
touch $HOME/.spectrecoin/spectrecoin.conf

[[ -n $RPCUSER ]] && echo "rpcuser=${RPCUSER}" >> $HOME/.spectrecoin/spectrecoin.conf
[[ -n $RPCPASSWORD ]] && echo "rpcpassword=${RPCPASSWORD}" >> $HOME/.spectrecoin/spectrecoin.conf

echo "##### SPECTRECOIN.CONF #####"
cat /spectre/.spectrecoin/spectrecoin.conf
echo ""
echo "///// SPECTRECOIN.CONF /////"
./spectrecoind
