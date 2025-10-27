#!/bin/sh

# Check if a complete bib file already exists
if [ -f ./refs/complete.bib ]; then
  rm ./refs/complete.bib
fi

# Make an empty bib file
touch ./refs/complete.bib

# Append R package citation to bib file
if [ -f ./refs/r_packages.bib ]; then
  cat ./refs/r_packages.bib >>./refs/complete.bib
fi

# Add any additional citations to bib file
if [ -f ./refs/lit_review.bib ]; then
  cat ./refs/lit_review.bib >>./refs/complete.bib
fi
