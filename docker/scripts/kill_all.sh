SCRIPTDIR=`pwd`/../scripts
if [ ! -d $SCRIPTDIR ] 
then 
	SCRIPTDIR=.
fi 
$SCRIPTDIR/kill_all_containers.sh 
for i in `docker images --all | tail -n +2 | awk -F" " '{print $3}'`
do
	echo Removing image $i 
	docker rmi -f $i 
done
