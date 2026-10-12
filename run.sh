printf "\033c"

while true;
do 
	read -rsn 1 -t 1 key
	[[ "$key" == "q" ]] && break
	for item in $(ls ./files)
	do 
		cat ./files/$item
		sleep 0.1
		printf "\033c"
	done
done
