const conn = require("../../../config/database");


module.exports = {
    getleaveList:(callBack)=>{
      


        conn.query(
            `SELECT hr_leavedetailsmast.SrNo,hr_leavedetailsmast.EmployeeId, hr_employeemaster.Name, hr_leavedetailsmast.LeaveEndDate,hr_leavedetailsmast.ApprovedLeavedStartDate,hr_leavedetailsmast.ApproveLeaveEndDate, hr_leavedetailsmast.LeaveStartDate, hr_leavedetailsmast.TotalDays, hr_leavedetailsmast.RequestStatus, hr_leavedetailsmast.ReqDescription, hr_leavedetailsmast.LeaveCategoary FROM hr_leavedetailsmast INNER JOIN hr_employeemaster ON hr_leavedetailsmast.EmployeeId = hr_employeemaster.EmployeeId ORDER BY SrNo DESC`,
            (error, results, fields) => {
              if (error) {
                callBack(error);
              }
              return callBack(null, results);
            }
          );
     
        

    },getleaveLists:(callBack)=>{
      


      conn.query(
          `SELECT SUM(CASE WHEN RequestStatus = 'PENDING' THEN 1 ELSE 0 END) AS total_pending_count, SUM(CASE WHEN RequestStatus = 'APPROVED' THEN 1 ELSE 0 END) AS total_approved_count, SUM(CASE WHEN RequestStatus = 'REJECTED' THEN 1 ELSE 0 END) AS total_rejected_count FROM hr_leavedetailsmast
      `,
          (error, results, fields) => {
            if (error) {
              callBack(error);
            }
            return callBack(null, results);
          }
        );
   
      

  },
    addLeaveList:(data,ManagerId, callBack)=>{
      var date1 = new Date(data.LeaveStartDate);
      var date2 = new Date(data.LeaveEndDate);
      var diffDays = parseInt((date2 - date1) / (1000 * 60 * 60 * 24) + 1); //gives day difference 

       
        conn.query(
          `insert into hr_leavedetailsmast(EmployeeId,ManagerId,RequestDateTime,LeaveStartDate,LeaveEndDate,LeaveCategoary,ReqDescription,TotalDays,RequestStatus) 
                    values(?,?,?,?,?,?,?,?,?)`,
          [data.EmployeeId,ManagerId,data.RequestDateTime,data.LeaveStartDate,data.LeaveEndDate,data.LeaveCategoary,data.ReqDescription,diffDays,'PENDING',],
          (error, results, fields) => {
            if (error) {
              callBack(error);
            }
            return callBack(null, results);
          }
        );
    
        
        

    },getleaveListId:(id,callBack)=>{
      conn.query(`SELECT hr_leavedetailsmast.SrNo,hr_leavedetailsmast.EmployeeId, hr_employeemaster.Name, hr_leavedetailsmast.LeaveEndDate, hr_leavedetailsmast.LeaveStartDate, hr_leavedetailsmast.TotalDays, hr_leavedetailsmast.RequestStatus, hr_leavedetailsmast.ReqDescription, hr_leavedetailsmast.LeaveCategoary FROM hr_leavedetailsmast INNER JOIN hr_employeemaster ON hr_leavedetailsmast.EmployeeId = hr_employeemaster.EmployeeId where hr_leavedetailsmast.EmployeeId=? ORDER BY SrNo DESC`,
          [id],
          (error, results, fields) => {
            if (error) {
              callBack(error);
            }
            return callBack(null, results);
          }
        );
    },getleaveListIds:(id,callBack)=>{
      conn.query(`SELECT SUM(CASE WHEN RequestStatus = 'PENDING' THEN 1 ELSE 0 END) AS total_pending_count, SUM(CASE WHEN RequestStatus = 'APPROVED' THEN 1 ELSE 0 END) AS total_approved_count, SUM(CASE WHEN RequestStatus = 'REJECTED' THEN 1 ELSE 0 END) AS total_rejected_count FROM hr_leavedetailsmast where hr_leavedetailsmast.EmployeeId=?`,
          [id],
          (error, results, fields) => {
            if (error) {
              callBack(error);
            }
            return callBack(null, results);
          }
        );
    },
    leaveUpdate:(data,callBack)=>{
      conn.query(
        `insert into hr_leavemaster(EmployeeId,ApprovedLeaveDate,Month,Year,Status) 
                  values(?,?,?,?,?)`,
        [data.EmployeeId,data.ApprovedLeaveDate,data.month,data.year,'1',],
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results);
        }
      );

    },
    leaveEdit:(data,id,callBack)=>{
      conn.query(
        `update hr_leavedetailsmast set ApprovedLeavedStartDate=?,ApproveLeaveEndDate=?, ApprovedBy=?, RequestStatus=?,ApprovalDateTime=?,Month=?,Year=?,ApprovalRemark=? where SrNo = ?`,
        [
          data.ApprovedLeavedStartDate,
          data.ApproveLeaveEndDate,
          data.ApprovedBy,
          data.RequestStatus,
          data.ApprovalDateTime,
          data.month,
          data.year,
          data.Description,
          id

          
        ],
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results[0]);
        }
      );

    },leaveAction:(data,ip,callBack)=>{
      
     
      conn.query(
        `insert into hr_actionlogmaster(ActionOn,ActionBy,Description,ActionTime,LoginUser,loginIp,ActivityCode) 
                  values(?,?,?,?,?,?,?)`,
        [data.EmployeeId,data.ApprovedBy,data.aDesc,data.ApprovalDateTime,data.LoginUser,ip,'1',],
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results);
        }
      );

    } 

}