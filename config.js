const mysql = require('mysql');
const con = mysql.createConnection({
    host: "10.10.20.52",
    user: "dev22",
    password: "OcffcN6l7NDs6SeO",
    database:'tdot_multiapi'
    
});
con.connect((err)=>{
    if(err) {
        console.warn("error is connection");
    }
});

module.exports = con;

// const express = require('express');
// const con = require("./config");
// const app = express();
// app.get("/", (req,resp)=>
// {
//     con.query("select * from users", (err,result)=>{
//         if(err) {
//             resp.send("error")
//         }else{
//             Response.send(result)
//         }
//     })

// })