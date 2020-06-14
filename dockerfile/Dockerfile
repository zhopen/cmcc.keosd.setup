FROM zhopen/eosio.eos:v1.8.1

ENV DATA_DIR "/keosd/data-dir"
ENV HTTP_SERVER_ADDRESS "0.0.0.0:9999"

RUN mkdir -p $DATA_DIR
COPY keosd-data-dir $DATA_DIR
COPY importkeys.sh $DATA_DIR
RUN chmod +x $DATA_DIR/importkeys.sh
ENV HTTP_SERVER_ADDRESS "0.0.0.0:9999"
CMD keosd --data-dir $DATA_DIR --http-server-address $HTTP_SERVER_ADDRESS --http-validate-host false --unlock-timeout 9999999
#CMD keosd --data-dir /keosd/data-dir --http-server-address 0.0.0.0:9999  --http-validate-host false --unlock-timeout 9999999
