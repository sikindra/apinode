const express = require('express');
const reqFilter = require('./middleware');
const app = express();
const route = express.Router();


//app.use(reqFilter)
route.use(reqFilter);
app.get('/',(req,resp)=>{
    resp.send("welcome to Home Page")

})
route.get('/about', (req,resp)=>{
    resp.send("welcome to About Page")

})
route.get('/contact', (req,resp)=>{
    resp.send("welcome to Contact Page")

})
app.use('/',route)


app.listen(4000)