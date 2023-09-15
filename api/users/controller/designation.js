
const {getDesignationList,designationList,addDesignationList,designationeditList,designationDelete} = require('../models/designation.models');
module.exports = {
    listdesignation: (req, res) =>{
        getDesignationList((err,results)=>
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
      addDesignation: (req,res)=>{
        const body = req.body;
        
        
        if(body.DesignationCode==""){
            return res.json({
                success: 0,
                data: "please Enter Your Designation Name."
            });

        }else if(body.GracePeriod==""){
            return res.json({
                success: 0,
                data: "please Enter Your Grace Period."
            });

        }else{
            designationList(body.DesignationCode, (err, results) => {
                if (err) {
                console.log(err);
                return;
                }
                
                const result = (results);
            
                if(!result){
                  addDesignationList(body, (err, results) =>{
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
                      data: 'Add Designation Success'
                  });


                     
                  })
                }else{
                    return res.json({
                            success: 0,
                            data: "Already exists Designation Name."
                    });
                    
                
                }
                
            
            
          });
            

        }



      },
      viewDesignation: (req,res) =>{
        const designationName = req.params.id;
        designationList(designationName, (err, results) => {
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
      },editDesignation: (req,res) =>{
        const body = req.body;
        const designationName = req.params.id;
        designationeditList(body,designationName, (err, results) => {
          if (err) {
            console.log(err);
            return;
          }
          return res.json({
            success: 1,
            message: "designation updated successfully"
          });
          
        })

      },deleteDesignation: (req, res) => {
        const data = req.params.id;
        designationDelete(data, (err, results) => {
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
            data: 'Delete Designation Success'
        });
        });
      }

}