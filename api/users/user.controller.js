const { getUserByUserName,getUserByUserId,getUserList,getProfilesList,getHomeList,loginhistorymast,getLoginhistory,addipAllocation,Ipllocation,getipAllcoation,getipAddress} = require("./user.services");
const { genSaltSync, hashSync,compareSync} = require("bcrypt");
const { sign } = require("jsonwebtoken");
const useragent = require('useragent');
const { validationResult, check } = require('express-validator'); 


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
          
            const result = (body.password==results.EmployeePassword);
  
            if (result) {
               results.password = undefined;
              const jsontoken = sign({ result: results }, "qwe1234", {
                expiresIn: "24h"
                
              });
              return res.json({
                success: 100,
                
                message: "login successfully",
                userId: results.EmployeeId,
                user: results.EmployeeUserName,
                UserType: results.UserType,
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
        
        // res.send('id: ' + req.query.UserId);
        const body =  req.query.UserId;
        if(body.UserId==""){
          return res.json({
            success: 0,
            data: "please Enter Your UserId"
          });
          
        }else{
          getProfilesList(body, (err, results) => {
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
        
        
       
        
      },
      homeEntity: (req, res) =>{
        getHomeList((err,results)=>
        {
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

        

      },
      loginhistory:(req,res)=>{
        const data = req.body;
        
        const userAgentString = req.headers['user-agent'];
        const agent = useragent.parse(userAgentString);
        const osName = agent.os.toString();
        const browserName = agent.toAgent();
        const ipAddress = req.connection.remoteAddress;
        function removeIPv6MappedPrefix(ipv6MappedAddress) {
        
          if (ipv6MappedAddress.startsWith('::ffff:')) {
            
            return ipv6MappedAddress.substring(7);
          } else {
           
            return ipv6MappedAddress;
          }
        }
        
        const ipv6MappedAddress = ipAddress;
        const ipv4Address = removeIPv6MappedPrefix(ipv6MappedAddress);
        loginhistorymast(data,ipv4Address,browserName,osName, (err, results) => {
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
        
      
                
      },
      loginhistorys:(req,res)=>{
        const userName = req.params.id;
        getLoginhistory(userName, (err,results)=>{
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

        })

      },ipAllocation:(req,res)=>{
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
          return res.status(400).json({ errors: errors.array() });
        }
        const body = req.body;
        getipAllcoation(body.EmployeeId,(err,results)=>{
          if (err) {
            console.log(err);
            return;
          }
          if (results) {
            return res.json({
              success: 101,
              message: "Already Existing EmployeeID!."
            });
          }
          getipAddress(body.IPAddress,(err,results)=>{
            if (err) {
              console.log(err);
              return;
            }
            if (results) {
              return res.json({
                success: 102,
                message: "Already Allocated IpAddress!."
              });
            }
            addipAllocation(body, (err,results)=>{
              if (err) {
                console.log(err);
                return;
              }
              if (!results) {
                return res.json({
                  success: 101,
                  message: "Record not Found"
                });
              }
              return res.json({
                success: 100,
                message: "Add Ip Allocation Successfully!."
              });
            })
          })
        
         

        })
       

      },getipAllocation:(req,res)=>{
        
        Ipllocation((err,results)=>{
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

        })

      }
      
}