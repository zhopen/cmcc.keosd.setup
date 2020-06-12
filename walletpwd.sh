SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
. $SHELL_FOLDER/config
cat $HOST_DATA_DIR/walletpasswd.txt
