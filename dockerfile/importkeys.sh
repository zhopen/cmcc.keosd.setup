#!/bin/bash

WALLET_URL=$1
WALLET_NAME=$2
WALLET_PWD=$3
KEYS_FILE=$4

CLEOS="cleos --wallet-url $WALLET_URL wallet"

$CLEOS open -n $WALLET_NAME
$CLEOS unlock -n $WALLET_NAME --password $WALLET_PWD

while read line
do
$CLEOS import -n $WALLET_NAME --private-key $line
done < $KEYS_FILE

#Usage:
#./importkeys.sh http://127.0.0.1:9999 default PW5JA23vi4SVi5Qp7ZCuFE74VPaUpaX31Hh4PPPYQYvQUaWqixied keys.txt
