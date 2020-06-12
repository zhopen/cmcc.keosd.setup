source config

docker run \
   --network host \
   --name $CONTAINER_NAME \
   --volume $HOST_DATA_DIR/:/data/keosd/data-dir \
   --detach \
   --privileged=true \
   $IMAGE   \
   /bin/bash -c \
   "keosd --data-dir /data/keosd/data-dir --http-server-address $HTTP_SERVER_ADDRESS --http-validate-host false --unlock-timeout 9999999" 

