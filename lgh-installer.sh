#!/bin/bash
Bin_folder="/usr/local/bin/"
Exec_folder="$(dirname "$0")/source/"
noc=$(tput sgr0); rec=$(tput setaf 1); grc=$(tput setaf 2); blc=$(tput setaf 4); cyc=$(tput setaf 6); mac=$(tput setaf 5)
if [[ -f "$Bin_folder/histgamehelper" ]]; then
	echo -e "\n ${cyc}1${noc} - ${grc}Update${noc}"
	echo -e " ${cyc}2${noc} - ${grc}Uninstall${noc}"
	echo -e "\nChoose ${cyc}option${noc} from the ${grc}list${noc} above:"; read -e "installer_ans"
else installer_ans="1"; fi
if [[ "$installer_ans" == "1" ]]; then
	sudo cp $Exec_folder/histgamehelper $Bin_folder/histgamehelper
	sudo chmod 755 $Bin_folder/histgamehelper
	if [[ -f "$Bin_folder/histgamehelper" ]]; then echo -e "\n${grc}Successful${noc}\n"
	else echo -e "\n${rec}Failed${noc}\n"; fi
elif [[ "$installer_ans" == "2" ]]; then
	sudo rm -f $Bin_folder/histgamehelper
	if [[ ! -f "$Bin_folder/$Exec" ]]; then echo -e "\n${grc}Successful${noc}\n"
	else echo -e "\n${rec}Failed${noc}\n"; fi; fi
