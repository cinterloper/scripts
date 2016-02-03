#!/bin/bash
CTR=$(docker -H localhost:4243 run -t -i -d -v $(pwd):/usr/share/nginx/html -P nginx )
docker -H localhost:4243 inspect $CTR | jq .NetworkSettings.Ports




