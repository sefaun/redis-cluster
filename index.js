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
], {
  scaleReads: "slave",
})

client.on("connect", (data) => {
  console.log(data, "bağlandı")
})

client.get("ata").then(data => {
  console.log(data)
}).catch(err => console.log(err, "hata"))