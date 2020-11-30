#!/bin/bash

for f in *.p7m  
do 
    filename=$(basename $f .p7m)
    perl -ne 's/^.*%PDF/%PDF/; print if /%PDF/../%%EOF/' $f >$filename
done
