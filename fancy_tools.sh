#!/bin/bash
mkdir ~/src
brc=$(<~/.bashrc)
if grep -q "src ~/src/.aliases" <<< "$brc";
then
	echo "aliane pret a fonctionne"
else
	echo "src ~/src/.aliases" >> ~/.bashrc
	echo 'aliane fonctionne'
fi
if grep -q "src ~/src/fancy_tools.sh" <<< "$brc";
then
	echo "fancy functions pret a fonctionne"
else
	echo "src ~/src/fancy_tools.sh" >> ~/.bashrc
	echo 'fancy tools pret a fonctionne'
fi

if [ -d "~/bin" ]
then
	cp ~/src/bin/updateFancyTools ~/bin/updateFancyTools
else
	mkdir ~/bin
	export PATH=$PATH:$HOME/bin
	cp ~/src/bin/updateFancyTools ~/bin/updateFancyTools
fi













