const {getleaveList,addLeaveList,getleaveListId,getleaveLists,getleaveListIds,leaveUpdate,leaveEdit,leaveAction} = require('../models/employeeLeave')
const {getAllocatioLists} = require('../models/employeeAllocation');
const employeeLeave = {

    listleave: (req, res) =>{
        getleaveList((err,results)=>
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
    listleaves: (req, res) =>{
      getleaveLists((err,results)=>
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
    addLeave:(req, res)=>{
        const body = req.body;
        
        const employeeId = req.body.EmployeeId;
        getAllocatioLists(employeeId ,(err,results)=>{
          if (err) {
            console.log(err);
            return;
          }
          if(results){
             mangerId = results.AllocatedEmployeeId
          }else{
             mangerId = '0'
          }
          addLeaveList(body,mangerId, (err, results) =>{
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
                message: 'Add Leave Success'
            });
          })
        })

    },
    listidleave:(req, res)=>{
      const employeeId = req.params.id;
      getleaveListId(employeeId,(err,results)=>
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
    listidleaves:(req, res)=>{
      const employeeId = req.params.id;
      getleaveListIds(employeeId,(err,results)=>
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
    updateLeave:(req, res) =>{
      const employeeId = req.params.id;
      const body = req.body;
      
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
      leaveUpdate(body,(err,results)=>{
        if (err) {
          console.log(err);
          return;
        }
        if (results) {
          leaveAction(body,ipv4Address,(err,results)=>{
            if (err) {
              console.log(err);
              return;
            }
            if (results) {
              leaveEdit(body,employeeId,(err,results)=>{
                if (err) {
                  console.log(err);
                  return;
                }
                return res.json({
                  success: 100,
                  data: "Approved Leave Succssfully"
                });
              })

            }
            
          

          })
          
        }

      })

    }

}
module.exports = employeeLeave;