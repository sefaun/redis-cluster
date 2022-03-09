docker-compose up

docker ps

--select an container id

docker exec -it <containerid> sh

redis-cli --cluster create 173.17.0.2:7000 173.17.0.3:7001 173.17.0.4:7002 --cluster-replicas 1