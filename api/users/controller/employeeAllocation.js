const { validationResult, check } = require('express-validator'); 
const {getAllocatioList,addAllocations, deleteAllocationList,getAllocatioLists} = require('../models/employeeAllocation');
const {employeeList} = require('../employee.services');
const employeeAllocation = {
   
    addAllocation(req, res) {
        const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }
    const body = req.body;
    const employeeId = req.body.EmployeeId;
    employeeList(employeeId,(err,results)=>{
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
      
      
      const EmployeeUserName = results.EmployeeUserName;
      const Name = results.Name;
      getAllocatioLists(employeeId ,(err,results)=>{
        if (err) {
          console.log(err);
          return;
        }
        if (results) {
          return res.json({
          success: 102,
          message: "Already Exists Allocate Employee!"
          });
        }
         addAllocations(body,Name,EmployeeUserName ,(err,results)=>{
        
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
            data: 'Add Employee Allocation Success'
        });

      })

      });
     
      
     

    });
    


    
    
        
    },
    listAllocation(req , res) {
        getAllocatioList((err,results)=>
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
    deleteAllocation(req,res){
        const allocationid = req.params.id;
        deleteAllocationList(allocationid, (err, results) => {
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
                data: 'Delete Employee Allocation Success'
            });

        })

    }
    

}
module.exports = employeeAllocation;