#!/bin/bash

Fakeip=$(hostname -I | awk '{print $1}')
realip=$(curl -s https://agent621.github.io -N )
if [[ $Fakeip == $realip ]]; then
	echo "Here you go"
else
	echo "ACCSESS DENIED"
fi
