const { validationResult } = require("express-validator");
const { employeeList } = require("../employee.services");
const { addAtt,attendenceList,getAttendence,AttendenceListId,AttendenceListsId,attendenceupdateList,addmasterDetals,listAttendenceDetails ,addmasterDetal, get_report_attendence} = require("../models/attendance");

const attendence = {
    addAttendence: (req,res)=>{
      
        const body = req.body;
        employeeList(body.EmployeeId,(err,results)=>{
                       
                const WorkShift =results.WorkShift;
                const Name =results.Name;
                const EmployeeUserName =results.EmployeeUserName;
                attendenceList(body.EmployeeId,(err,results)=>{
                  if (err) {
                    console.log(err);
                    return;
                  }
                 
                  
                  if(results){
                    if(body.ActionType=="IN"){
                      addmasterDetals(body,EmployeeUserName,Name,WorkShift,(err,results)=>{
                        if (err) {
                          console.log(err);
                          return;
                        }
                        
                        return res.json({
                          success: 100,
                          message:"Add Attendence Success"
                      });
                        
                      })

                    }else{
                      attendenceupdateList(body,body.EmployeeId,(err,results)=>{
                        if (err) {
                          console.log(err);
                          return;
                        }
                        
                        listAttendenceDetails(body.EmployeeId,(err,results)=>{
                          if (err) {
                            console.log(err);
                            return;
                          }
                          const EntryTime =results;
                          
                            addmasterDetal(body,EmployeeUserName,Name,WorkShift,EntryTime,(err,results)=>{
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
                                message: 'Update Attendence Success'
                            });
                              
                            })
                         
                            
                          
  
                          
                        })
                         
                       })

                    }

                    
                   
                   

                    
                  }
                  else{
                    addAtt(body,(err, results)=>{
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
                        
                      if(results){
                        addmasterDetals(body,EmployeeUserName,Name,WorkShift,(err,results)=>{
                          if (err) {
                            console.log(err);
                            return;
                          }
                          
                          return res.json({
                            success: 100,
                            message:"Add Attendence Success"
                        });
                          
                        })
        
                      }
                  })
        
                  }
                 
        
                })
                

        })
        
        
    },
    report_attendance: (req,res)=>{
      const id = req.params.id;
      get_report_attendence(id,(err,results) =>{
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

      })
    },
    UpdateAttendence: (req,res)=>{
      const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }
      
      const body = req.body;
      const id = req.params.id;
      
      attendenceupdateList(body,id,(err,results)=>{
        if (err) {
          console.log(err);
          return;
        }
        
        return res.json({
          success: 100,
          message: 'Update Attendence Success'
      });
        
        
    
      })
    },
    listAttendence: (req,res) =>{
      getAttendence((err,results)=>
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

    },
    attendenceListId: (req,res)=>{
      const id = req.params.id;
      AttendenceListId(id,(err,results)=>
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

    },attendenceListsId: (req,res)=>{
      const id = req.params.id;
      AttendenceListsId(id,(err,results)=>
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

    }

}
module.exports = attendence;