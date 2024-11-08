#!/bin/bash

TMPDIR=/tmp/latex-workshop-pdftex
mkdir -p $TMPDIR

# Set the environment variables for the container
echo SRC_DIR="$SRCDIR" >> $TMPDIR/env
echo OUT_DIR="$OUTDIR" >> $TMPDIR/env
echo TEXINPUTS_DIR="$TEXINPUTS//:" >> $TMPDIR/env

# Make the post script available
cp post.sh $TMPDIR
chmod +x $TMPDIR/post.sh
