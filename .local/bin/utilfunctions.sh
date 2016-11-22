#!/bin/sh

# Define your function here
sloc ()
		{
		echo -e "grep -R --color -n '$1':\n"
		grep -R --color -n "$1" ./
		}

sloce ()
		{
		echo -e "Searching for: $1"
		echo -e "Excluding directories: $2"
		echo -e "grep -R --color -n --exclude-dir='*${2}*' '$1':\n"
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
