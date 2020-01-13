#!/bin/bash

# VARIABLES
MPDIR=~/mprime
MPRIME="${MPDIR}/*.tar.gz"
BIN="${MPDIR}/mprime"

clear
# PRELIMS
mkdir -p $MPDIR

# Check to see if mprime already exists

if [ -f "${BIN}" ]
then
    cd $MPDIR && ./mprime -m
else
    echo ""
    echo ""
    echo "Downloading latest mprime..."
    sleep 3
    echo ""
    wget -P $MPDIR http://www.mersenne.org/ftp_root/gimps/p95v298b3.linux64.tar.gz
    echo ""
    echo "Decompressing tarball..."
    echo ""
    sleep 3
    cd $MPDIR && tar -xvf $MPRIME
    echo ""
    rm -rf $MPDIR/*.tar.*
    # Getting started
    echo "Running mprime..."
    sleep 3
    echo ""
    ./mprime -m
fi



