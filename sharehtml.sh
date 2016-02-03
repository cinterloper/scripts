#!/bin/bash
CTR=$(docker -H localhost:4243 run -t -i -d -v "$(pwd)":/usr/share/nginx/html -v $(dirname $(realpath -s $0))/conf/nginx-dirlist.conf:/etc/nginx/conf.d/default.conf -P nginx )
docker -H localhost:4243 inspect $CTR | jq .[].NetworkSettings.Ports




