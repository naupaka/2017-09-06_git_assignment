#!/bin/bash

# A script to setup a bioinformatics project folder
# Nila Le nle4@usfca.edu
# September 6, 2017

# Setup folder structure
echo "Creating folder structure..."
mkdir 2017-09-06_bioinformatics_project
cd 2017-09-06_bioinformatics_project
mkdir code data data/raw_data results results/figures results/tables

echo "Creating empty README"
touch README.txt

# Download fasta file into raw_data subdirectory
echo "Downloading data..."

# the -L is to tell curl to follow redirects, and the -o tell it what name to save the file under once it's downloaded
curl -L http://npk.io/aMPCOe+ -o data/raw_data/crab_rRNA.fasta

echo "All done!"

touch .gitkeep
