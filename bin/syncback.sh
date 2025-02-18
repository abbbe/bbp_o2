#!/bin/sh -x

ID=`docker ps --format "{{.ID}}\t{{.Ports}}" | awk '/:9632/{print $1}'`

docker exec $ID tar cz * | tar xz
