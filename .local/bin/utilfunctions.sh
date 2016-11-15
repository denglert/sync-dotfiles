#!/bin/sh

# Define your function here
sloc ()
		{
		grep -R --color -n "$1" ./
		}

sloce ()
		{
		echo "seearching for: $1"
		echo "excluding directories: $2"
		grep -R --color -n --exclude-dir="*${2}*" "$1" ./
		}

lsm ()
		{
		ls -l | grep --color $1
		}

mounteos ()
		{
		eosmount /afs/cern.ch/work/d/denglert/public/eos
		}

umounteos ()
		{
		eosumount /afs/cern.ch/work/d/denglert/public/eos
		}
