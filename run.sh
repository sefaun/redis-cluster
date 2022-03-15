docker-compose up

docker ps

--select an container id

docker exec -it <containerid> sh

redis-cli --cluster create 173.17.0.2:7000 173.17.0.3:7001 173.17.0.4:7002 173.17.0.5:7003 173.17.0.6:7004 173.17.0.7:7005 --cluster-replicas 1