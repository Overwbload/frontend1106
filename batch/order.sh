#!/bin/bash

export PGHOST=prd-db.cb04ggmik654.ap-northeast-1.rds.amazonaws.com
export PGDATABASE=postgres
export PGUSER=root
export PGPASSWORD=aA9527123
psql -c "\COPY order_main TO '/tmp/order.csv' WITH CSV DELIMITER ',';"
exit 0