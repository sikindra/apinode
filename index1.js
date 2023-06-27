
// const http =require('http');
// const data = require('./data');
// // function dataControl(req,resp){
// //     resp.write("hello");
// //     resp.end();

// // }
// // const dataControl = (req,resp)=>{
// //     resp.write("hello");
// //     resp.end();
// // }


// http.createServer((req,resp)=>{
//     resp.writeHead(200,{'Content-Type':'application\json'});
//     resp.write(JSON.stringify(data));
//     resp.end();

// }).listen(4000);
const express = require('express');
const con = require("./config");
const app = express();
app.get('/',(req,res)=>{
    con.query("select 'ProfileId','UserName' from ivr_usermaster where AccountStatus IN('PENDING','ACTIVE','HOLD') and UserType = 'CLIENT'", (err,result)=>{
                if(err) {
                    res.send("error")
                }else{
                    res.send(result)
                }
            })

});

app.post('/about',(req,resp)=>{
    console.log("data",resp.body);
    // resp.send("hello about"+req.query.name);

});
app.listen(4000);



