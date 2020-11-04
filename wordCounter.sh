#!/bin/bash

echo Sorting by unique words in $1


sed "s/\ /\n/g" "$1" | sort | tr [:lower:] [:upper:] | sed "s/[.,-?\!\"\ \r]//g" | uniq -c | sort -n 
