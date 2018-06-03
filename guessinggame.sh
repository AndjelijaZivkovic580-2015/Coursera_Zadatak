#!/usr/bin/env bash
 
function pitaj {
	echo "Unesite broj fajlova koliko mislite da ima"
	read koliko
    files=$(ls -1 | wc -l)
}

pitaj
while [[ $koliko -ne $files ]]
do
	if [[ $koliko -lt $files ]] 
	then
		echo "Ima vise od unetog broja."	
	else
		echo "Ima manje od unetog broja"	
	fi
	pitaj
done
 
echo "Pogodili ste tacan broj fajlova !"

echo "---" && ls -1
