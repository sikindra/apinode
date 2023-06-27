const { getUserByUserName,getUserByUserId,getUserList,getProfilesList } = require("./user.services");
const { genSaltSync, hashSync,compareSync} = require("bcrypt");
const { sign } = require("jsonwebtoken");


module.exports = {
  login: (req, res) => {
        
        const body = req.body;
        if(body.UserName==""){
          return res.json({
            success: 0,
            data: "please Enter Your UserName"
          });
          
        }else if (body.password=="") {
          return res.json({
            success: 0,
            data: "please Enter Your password"
          });

        }
        else{
          getUserByUserName(body.UserName, (err, results) => {

            if (err) {
              console.log(err);
            }
            if (!results) {
              return res.json({
                success: 102,
                data: "Invalid UserName"
              });
            }
          
            const result = (body.password==results.UserPassword);
  
            if (result) {
              results.password = undefined;
              const jsontoken = sign({ result: results }, "qwe1234", {
                expiresIn: "1h"
                
              });
              return res.json({
                success: 100,
                
                message: "login successfully",
                userId: results.ProfileId,
                user: results.UserName,
                token: jsontoken



                
              });
            } else {
              return res.json({
                success: 103,
                data: "Invalid  password"
              });
            }
          });

        }
        
      },
      getUserByUserId: (req, res) => {
        const UserId = req.params.id;
        getUserByUserId(UserId, (err, results) => {
          if (err) {
            console.log(err);
            return;
          }
          if (!results) {
            return res.json({
              success: 0,
              message: "Record not Found"
            });
          }
          results.password = undefined;
          return res.json({
            success: 1,
            data: results
          });
        });
      }
      ,getUserList: (req, res) =>{
        const body = req.body;
        if(body.UserId==""){
          return res.json({
            success: 0,
            data: "please Enter Your UserId"
          });
          
        }else{
          getUserList(body.UserId, (err, results) => {
            if (err) {
              console.log(err);
              return;
            }
            if (!results) {
              return res.json({
                success: 0,
                message: "Record not Found"
              });
            }
            
            return res.json({
              success: 1,
              data: results
            });
          });

        }
        
        
       
        
      }
      ,getProfileList: (req, res) =>{
        const body = req.body;
        if(body.UserId==""){
          return res.json({
            success: 0,
            data: "please Enter Your UserId"
          });
          
        }else{
          getProfilesList(body.UserId, (err, results) => {
            if (err) {
              console.log(err);
              return;
            }
            if (!results) {
              return res.json({
                success: 0,
                message: "Record not Found"
              });
            }
            
            return res.json({
              success: 1,
              data: results
            });
          });

        }
        
        
       
        
      }
      
}