. config
docker exec $CONTAINER_NAME cleos --wallet-url http://$HTTP_SERVER_ADDRESS wallet open
docker exec $CONTAINER_NAME cleos --wallet-url http://$HTTP_SERVER_ADDRESS wallet unlock --password `cat $HOST_DATA_DIR/walletpasswd.txt`
