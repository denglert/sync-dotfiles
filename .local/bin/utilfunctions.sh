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

cl ()
		{
		cd $1; ls -l
		}

lsm ()
		{
		ls -l | grep --color $1
		}

f ()
{
		echo -e "find files for: $1"
		echo -e "Executed command: find . -name "*${1}*"\nResults:"
		find . -name "*${1}*"
}

rmod()
{
	if [ "$#" -eq 1 ]; then
		from=$1
		echo -e "Get all recently modified files from $1 min ago."
		echo -e "Executed command: find . -type f -mmin -$1"
		echo -e "Results:"
		find . -type f -mmin -$1
	elif [ "$#" -eq 2 ]; then
		from=$1
		to=$2
		echo -e "Get all recently modified files from $1 min ago to $2 min ago."
		echo -e "Executed command: find . -type f -mmin -$1 -mmin +$2"
		echo -e "Results:"
		find . -type f -mmin -$1 -mmin +$2
	fi
}

count_f()
{
	find . -type f | wc -l
}


watch_threads()
{
	watch -n 1 "ps hH $1 | wc -l"
}


mounteos ()
		{
		eosmount /afs/cern.ch/work/d/denglert/public/eos
		}

umounteos ()
		{
		eosumount /afs/cern.ch/work/d/denglert/public/eos
		}
