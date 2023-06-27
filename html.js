const express = require('express');
const path = require('path');

const app = express();
const publicPath = path.join(__dirname,'public')

// app.use(express.static(publicPath));
app.set('view engine','ejs');
app.get('/profile',(_,resp)=>{
    const user={
        name:'sikindra kumar',
        email:'sikindra@gmail.com',
        city:'noida',
        skils:['php','python']
    }
    resp.render('profile',{user});
    

})
app.get('/login',(__,resp)=>{
    resp.render('login');

})

app.listen(5000);