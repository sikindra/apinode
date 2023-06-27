
// var a = 20;
// var b = 30;
// var z = a+b;
// console.log(z)
// if(a==='20'){
//     console.log("matched")

// }
// create new files

// const fs = require('fs');
// console.log("-->>",__dirname);
// console.log("code step by step")
// fs.writeFileSync("welcom.txt","code step by step")         


var mysql = require('mysql');

var con = mysql.createConnection({
  host: "10.10.20.52",
  user: "dev22",
  password: "OcffcN6l7NDs6SeO",
  database:'tdot_multiapi'
});

con.connect(function(err) {
  if (err) throw err;
  con.query("select * from 	ivr_usermaster",function(err,result){
    if(err) throw err;
    console.warn("all results are here", result[1].UserName)
  })
});
