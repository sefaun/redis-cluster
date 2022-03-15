import Redis from "ioredis"

const client = new Redis.Cluster([
  {
    port: 7000,
    host: "localhost",
  },
  {
    port: 7001,
    host: "localhost",
  },
  {
    port: 7002,
    host: "localhost",
  },
  {
    port: 7003,
    host: "localhost",
  },
  {
    port: 7004,
    host: "localhost",
  },
  {
    port: 7005,
    host: "localhost",
  },
])

client.on("connect", (data) => {
  console.log(data, "bağlandı")
})

client.set("sefa", "bar");

client.get("sefa").then(data => {
  console.log(data)
}).catch(err => console.log(err, "hata"))