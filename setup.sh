set -x
source config

#Create docker volume outside container
mkdir -p $HOST_DATA_DIR

#keosd, firstly start keosd server
if [[ -n `docker ps -a |grep $CONTAINER_NAME` ]]
then
   echo "keosd existed！ you need stop the keosd before starting"
   exit 0
fi

./start.sh
 
sleep 2 

cleos="docker exec -it $CONTAINER_NAME cleos --wallet-url http://$HTTP_SERVER_ADDRESS"

##Create wallet 
$cleos wallet create --file /data/keosd/data-dir/walletpasswd.txt
sleep 4
$cleos wallet open
$cleos wallet list
$cleos wallet unlock --password `cat $HOST_DATA_DIR/walletpasswd.txt`
$cleos wallet list
