echo "Redis Cluster is starting !"
docker network create red_cluster

echo "Redis 0 on started on 7000 !"
docker run -v C:/Users/Tsoft/Desktop/deneme/redis-cluster/7000/redis.conf:/usr/local/etc/redis/redis.conf -d --net=host --name myredis-0 redis redis-server /usr/local/etc/redis/redis.conf
echo "Redis 0 on started on 7000 !"

echo "Redis 1 on starting on 7001 !"
docker run -v C:/Users/Tsoft/Desktop/deneme/redis-cluster/7001/redis.conf:/usr/local/etc/redis/redis.conf -d --net=host --name myredis-1 redis redis-server /usr/local/etc/redis/redis.conf
echo "Redis 1 on started on 7001 !"

echo "Redis 2 on starting on 7002 !"
docker run -v C:/Users/Tsoft/Desktop/deneme/redis-cluster/7002/redis.conf:/usr/local/etc/redis/redis.conf -d --net=host --name myredis-2 redis redis-server /usr/local/etc/redis/redis.conf
echo "Redis 2 on started on 7002 !"

echo "Redis Cluster is done !"