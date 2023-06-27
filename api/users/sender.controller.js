const { getTemplateList,getsenderList,getEntityList } = require("./sender.services");
const { genSaltSync, hashSync,compareSync} = require("bcrypt");
const { sign } = require("jsonwebtoken");


module.exports = {
  senderList: (req, res) =>{
    const body = req.body;
    if(body.UserId==""){
      return res.json({
        success: 0,
        data: "please Enter Your UserId"
      });
      
    }else{
      getsenderList(body.UserId, (err, results) => {
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
  templateList: (req, res) =>{
        const body = req.body;
        if(body.UserId==""){
          return res.json({
            success: 0,
            data: "please Enter Your UserId"
          });
          
        }else{
          getTemplateList(body.UserId, (err, results) => {
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
      entityList: (req, res) =>{
        const body = req.body;
        if(body.UserId==""){
          return res.json({
            success: 0,
            data: "please Enter Your UserId"
          });
          
        }else{
          getEntityList(body.UserId, (err, results) => {
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
            // return res.json(results);
          });

        }
        
       
        
      }
    
}