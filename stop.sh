. config	
docker exec $CONTAINER_NAME pkill keosd
sleep 2 
docker rm $CONTAINER_NAME
