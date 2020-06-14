FROM zhopen/eosio.eos:v1.8.1

ARG DATA_DIR=/keosd/data-dir

RUN mkdir -p $DATA_DIR
COPY keosd-data-dir $DATA_DIR

ARG HTTP_SERVER_ADDRESS=0.0.0.0:9999
CMD keosd --data-dir $DATA_DIR --http-server-address $HTTP_SERVER_ADDRESS --http-validate-host false --unlock-timeout 9999999
