#!/bin/bash

# Clean filenames using rename (sudo apt install rename)
# find . | rename 's/ /_/g'
# find . | rename 's/-//g'
# find . | rename 's/__/_/g'

# Get filename from .pdf.p7m files
# Strip Header and Footer from .p7m file and write the output inside a .pdf file
for f in *.p7m  
do 
    filename=$(basename "$f" .p7m)
    perl -ne 's/^.*%PDF/%PDF/; print if /%PDF/../%%EOF/' "$f" >$filename
done
