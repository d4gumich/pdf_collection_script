#!/bin/bash

# import the organisations names and their website links
source ./urls


#download pdfs from the websites one after the other.
for key in "${!dict[@]}"
        do
                sudo wget -max-redirect=50 -r -nd -c -A.pdf ${dict[$key]} -P chetah/$key
        done
