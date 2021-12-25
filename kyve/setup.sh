#!/bin/bash
NICK=humboldt
STAKE=10
jq -c '.[]' pools.json | while read jsonData;
do
    NAME=$(echo $jsonData | jq -r .name)
    POOL=$(echo $jsonData | jq -r .pool)
    RUNTIME=$(echo $jsonData | jq -r .runtime)
    echo $NAME
    echo ./kyve-$RUNTIME-linux --pool $POOL --private-key `cat private.key` --keyfile arweave.json --name $NICK_$NAME --stake $STAKE > validate_$NAME.sh
    chmod +x validate_$NAME.sh
done
