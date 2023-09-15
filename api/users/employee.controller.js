
const {getEmployeeList,getAttendene,getcitymater,employeeList,addEmployeeList,updateEmployee,employeeDelete,employeeId,addEmployeeListByEmail,employeeType,employeeSerach,employeePasswordList,employeeChangpassword
} = require('./employee.services')
const { validationResult, check } = require('express-validator'); 
module.exports = {
  
    listEmployee: (req, res) =>{
        getEmployeeList((err,results)=>
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
      listAttendence: (req, res) =>{
        getAttendene((err,results) =>{
            if(err){
                console.log(err)
                return;
            }
            if(!results){
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
      },
      listcitymaster: (req, res) =>{
        const body = req.params.id;

        getcitymater(body,(err,results) =>{
            if(err){
                console.log(err)
                return;
            }
            if(!results){
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
      },addEmployee: (req,res) =>{
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
          return res.status(400).json({ errors: errors.array() });
        }
        
        const body = req.body;
        employeeId(body,(err,results)=>{
          if(results){
            return res.json({
                success: 102,
                message: "Already Exists EmployeeId"
              });
          }
          addEmployeeListByEmail(body,(err,results)=>{
            if(results){
              return res.json({
                  success: 103,
                  message: "Already Exists EmailID"
                });
              }
              addEmployeeList(body, (err, results) =>{
                if (err) {
                  console.log(err);
                  return;
                }
                if (!results) {
                  return res.json({
                  success: 10,
                  message: "Record not Foun"
                  });
                }
                return res.json({
                  success: 1,
                  data: 'Add Employee Data Successfully!'
                })
      
              })
              
          })
        

        })
        
        

      },viewEmployee: (req, res)=>{
        const E_id = req.params.id;
        employeeList(E_id, (err,results) =>{
          
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

      },editEmployee: (req,res) =>{
        const body = req.body;
        const employeeId = req.params.id;
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
          return res.status(400).json({ errors: errors.array() });
        }
       
        updateEmployee(employeeId,body, (err, results) => {
          if (err) {
            console.log(err);
            return;
          }
          return res.json({
            success: 1,
            message: " Employee Details has been Updated Successfully"
          });
          
        })

      },deleteEmployee:(req, res)=>{
        const employeeId = req.params.id;
        employeeDelete(employeeId, (err, results) => {
          if (err) {
            console.log(err);
            return;
          }
          if (!results) {
            return res.json({
            success: 10,
            message: "Employee Already Deleted"
            });
          }
          return res.json({
            success: 1,
            data: 'Deleted Employee Success'
        });
        });
      },
      typeEmployee:(req,res)=>{
        const body = req.params.id;
        employeeType(body, (err, results) => {
          if (err) {
            console.log(err);
            return;
          }
          if (!results) {
            return res.json({
            success: 10,
            message: "Employee Type Not Exist!"
            });
          }
          return res.json({
            success: 1,
            data: results
        });
        });

      },
      searchEmployee:(req,res)=>{
        const body = req.params.id;
        employeeSerach(body, (err, results) => {
          if (err) {
            console.log(err);
            return;
          }
          if (!results) {
            return res.json({
            success: 10,
            message: "Data Not Found!"
            });
          }
          return res.json({
            success: 1,
            data: results
        });
        });

      },changePasswordEmployee:(req,res)=>{
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
          return res.status(400).json({ errors: errors.array() });
        }
        const employeeId = req.params.id;
        
        const body = req.body;
       
        employeePasswordList(body,employeeId, (err, results) => {
          if (err) {
            console.log(err);
            return;
          }
          if (!results) {
            return res.json({
            success: 101,
            message: "Current Password Not Match!"
            });
          }
          employeeChangpassword(body,employeeId, (err, results) =>{
            if (err) {
              console.log(err);
              return;
            }
            
            return res.json({
              success: 100,
              message: 'Upadte Password Successfully!'
            })
          })
          
          

        })

      }

      
    
}