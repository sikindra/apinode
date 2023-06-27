// const express = require('express');
// const app = express();
// const reqFilter=(req,resp,next)=>{
//     if(!req.query.age){
//         resp.send("please provie age")
//     }else if(req.query.age<18){
//         resp.send("you can not access this page")

//     }
//     else{
//         next();

//     }
    
// }
// app.use(reqFilter)
// app.get('/',(req,resp)=>{
//     resp.send("welcome to Home Page")

// })
// app.get('/about',(req,resp)=>{
//     resp.send("welcome to About Page")

// })


// app.listen(5000)

//using middeleware

module.exports =   reqFilter = (req,resp,next)=>{ 
if(!req.query.age){
        resp.send("please provie age")
    }
    else{
        next();

    }
    
}
