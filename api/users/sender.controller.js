const { getTemplateList,getsenderList,getEntityList,listEntity,addSenderList,addEntityList,deleteEntityList,senderLists } = require("./sender.services");
const { genSaltSync, hashSync,compareSync} = require("bcrypt");
const { sign } = require("jsonwebtoken");


module.exports = {
  senderList: (req, res) =>{
    const body =  req.query.UserId;
    if(body.UserId==""){
      return res.json({
        success: 0,
        data: "please Enter Your UserId"
      });
      
    }else{
      getsenderList(body, (err, results) => {
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
    const body =  req.query.UserId;
        if(body.UserId==""){
          return res.json({
            success: 0,
            data: "please Enter Your UserId"
          });
          
        }else{
          getTemplateList(body, (err, results) => {
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
        const body =  req.query.UserId;
        if(body.UserId==""){
          return res.json({
            success: 0,
            data: "please Enter Your UserId"
          });
          
        }else{
          getEntityList(body, (err, results) => {
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
        
       
        
      },
      addSender: (req,res)=>{
        const body = req.body;
        const userId = req.query.UserId;
        const newSender = req.body.newSender;
       
        if(body.EnterId==""){
          return res.json({
            success: 0,
            data: "please Enter Your Entity ID."
          });
          
        }else if (newSender==0) {
          return res.json({
            success: 0,
            data: "Please Enter Sender ID."
          });

        }
        else if (newSender.length - 6) {
          return res.json({
            success: 0,
            data: "Invalid Sender. Sender ID should be 6 characters long & should contains only alphabets/only numbers."
          });

        }else{

          listEntity(body.EnterId,userId, (err, results) => {
          if (err) {
            console.log(err);
            return;
          }
          if (!results) {
            return res.json({
              success: 0,
              message: "Please select an entity."
            });
          }
          const result = (results.EntityId);
        
          if(result){
            
             addSenderList(body,userId,result,(err, results)=>{
              if (err) {
                console.log(err);
                return;
              }
              if (!results) {
                return res.json({
                  success: 10,
                  message: "Record not Found"
                });
              }
              return res.json({
                success: 1,
                data: 'Add Sender Success'
              });

             });

            
            
            
          }else{
            return res.json({
              success: 0,
              message: "Record not Found"
            });
          }
          
          
        });

        }

      },
      addEntity: (req,res)=>{
        const body = req.body;
        const entity = req.body.entity;
        const userId = req.query.UserId;
        if(body.entity==0){
          return res.json({
            success: 0,
            message: "Please Enter Entity ID."
          });

        }
        else{
          addEntityList(body,userId,(err, results)=>{
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
              data: 'Add Entity Success'
            });

           });

          

        }

      }
      ,deleteEntity: (req, res)=>{
        const body = req.body;
        const userId = req.query.UserId;
        senderLists(body,userId,(err, results)=>{
          if (err) {
            console.log(err);
            return;
          }
          if(results){
            return res.json({
              success: 0,
              message: "Entity can't be Deleted! First delete all sender against this entity."
            });
          }else{
           
            deleteEntityList(body,userId,(err, results)=>{
            if (err) {
              console.log(err);
              return;
            }
            if (!results) {
              return res.json({
                success: 10,
                message: "Record not Found"
              });
            }
            return res.json({
              success: 1,
              data: 'Delete Entity Success fuly'
            });

           });
         }
        });


      }
    
}