const express = require('express');
const reqFilter = require('./middleware');
const app = express();
const route = express.Router();

route.use(reqFilter);
app.get('/',(req,resp)=>{
    

})
route.get('/about', (req,resp)=>{
    resp.send("welcome to About Page")

})
route.get('/contact', (req,resp)=>{
    resp.send("welcome to Contact Page")

})
app.use('/',route)


app.listen(4000)