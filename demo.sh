#!/bin/bash

APP=myapp
docker stack rm $APP
echo "+++ Deploy using compose file 1"
docker stack deploy -c docker-compose.yml $APP 
sleep 10

echo "+++ Inspect stack"
docker stack ps $APP

echo "+++ Deploy using different, new, compose file 2"
docker stack deploy -c docker-compose.new.yml $APP 
sleep 10

echo "+++ Inspect stack"
docker stack ps $APP

echo "+++ Deploy using different, new, compose file 3 with one svc removed, one downgraded"
docker stack deploy -c docker-compose.remove.yml $APP 
sleep 10

echo "+++ Inspect stack"
docker stack ps $APP
