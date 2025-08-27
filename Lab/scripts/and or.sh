#!/bin/bash
a="abhay"
b=35

if [ $a="abhay" ] && [ $b -gt 18 ]; then
    echo " you are adult "
fi

if [ $a="abhay" ] && [ $b -lt 20 ]; then
    echo "you are minor"
fi

if [ $a="hello" ] || [ $b -gt 20]; then

fi