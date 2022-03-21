import Redis from "ioredis"

const client = new Redis({port: 7002})

client.on("connect", () => {
  console.log("bağlandı")
})

//client.set("sefa3", "barw");
setInterval(() => {
client.get("sefa").then(data => {
  console.log(data)
}).catch(err => console.log(err, "hata"))
}, 500);
// setInterval(() => {

//   client.xread("BLOCK", 100, "COUNT", 100, "STREAMS", "abooo", "$").then(data => {
//     console.log(data)
//   }).catch(err => console.log(err, "\n-> read error"))

// }, 500);