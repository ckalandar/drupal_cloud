for i in `docker volume ls | tail -n +2 | sed 's/  */ /g'|cut -d " " -f2`
do 
	echo "removing volume $i"
	docker volume rm $i 2>&1 
done 
