const { validationResult } = require("express-validator");
const { addWorkshitList,getWorkshitList,WorkshitDelete,editWorkShift } = require("../models/workshift");


const workshift = {
    addWorkshit: (req,res) =>{
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
          return res.status(400).json({ errors: errors.array() });
        }
        const body = req.body;
        addWorkshitList(body,(err,results)=>{
            if (err) {
                console.log(err);
                return;
            }
            if (!results) {
                return res.json({
                success: 101,
                message: "Record not Foun"
                });
            }
            return res.json({
                success: 100,
                message: 'Add WorkShift Success'
            })
              
            

        })
    },listWorkshit: (req,res) =>{
        getWorkshitList((err,results)=>
        {
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
            data: results
          });

        });

    },updateWorkshit:(req,res)=>{
      const workshiftId = req.params.id;
      const body = req.body;
      editWorkShift(workshiftId,body,(err,results)=>
      {
        if (err) {
          console.log(err);
          return;
        }
        
        return res.json({
          success: 100,
          message: "Update WorkShift Success"
        });
      })

    }
    ,deleteWorkshit:(req,res) =>{
      const workshiftId = req.params.id;
      WorkshitDelete(workshiftId,(err,results)=>
        {
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
            message: 'Deleted WorkShift Success'
          });

        });

    }
   

}
module.exports = workshift;