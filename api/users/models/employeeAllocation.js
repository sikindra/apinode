const conn = require("../../../config/database");


module.exports = {
    getAllocatioList:(callBack)=>{
        conn.query(
            `select * from hr_employeeallocationmaster where AllocationStatus="1"`,
            (error, results, fields) => {
              if (error) {
                callBack(error);
              }
              return callBack(null, results);
            }
          );

    },
    addAllocations:(data,name,userName, callBack)=>{
      let date = new Date();
      const datefromate = date.toISOString().slice(0, 19).replace('T', ' ');
        
        conn.query(
          `insert into hr_employeeallocationmaster(EmployeeId,EmployeeUserName,EmployeeName,AllocatedEmployeeId,AllocationDateTime,AllocatedBy,AllocationStatus) 
                    values(?,?,?,?,?,?,?)`,
          [data.EmployeeId,userName,name,data.AllocatedEmployeeId,datefromate,data.AllocatedBy,'1',],
          (error, results, fields) => {
            if (error) {
              callBack(error);
            }
            return callBack(null, results);
          }
        );
       

    },
    deleteAllocationList:(data,callBack)=>{
        conn.query(
            `delete from hr_employeeallocationmaster where SrNo = ?`,
            [data],
            (error, results, fields) => {
              if (error) {
                callBack(error);
              }
              
              return callBack(null, results.affectedRows);
            }
          );

    },validateEmployeeEmails:(data,callBack)=>{
        conn.query(
            `select * from hr_employeemaster where Email= ?`,
            [data.Email],
            (error, results, fields) => {
              if (error) {
                callBack(error);
              }
              return callBack(null, results);
            }
          );

    },getAllocatioLists:(data,callBack)=>{
      conn.query(
        `select * from hr_employeeallocationmaster where EmployeeId= ?`,
        [data],
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results[0]);
        }
      );

    }
}