while true;
do 
	read -rsn 1 -t 1 key
	[[ "$key" == "q" ]] && break
	for item in $(ls ./files)
	do 
		printf "\033c"
		cat ./files/$item
		sleep 1.5
	done
done
