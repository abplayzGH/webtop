#!/bin/sh

set -x 

BEGIN INIT INFO
Provides: webtop-start.sh
Required-Start: $all
Required-Stop: $all
Default-Start: 2 3 4 5
Default-Stop: 0 1 6
Short-Description: Starts webtop container at boot time
END INIT INFO

sudo docker-compose -f /compose/docker-compose.yaml up


