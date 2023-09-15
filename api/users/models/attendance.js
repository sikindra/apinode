const conn = require("../../../config/database");
const moment = require('moment');

module.exports = {
    addAtt:(data, callBack) =>{
        const date_ob = new Date();
        
        const month = ("0" + (date_ob.getMonth() + 1)).slice(-2);
        const year = date_ob.getFullYear();
        let date = ("0" + date_ob.getDate()).slice(-2);
        let hours = date_ob.getHours();
        let minutes = date_ob.getMinutes();
        let seconds = date_ob.getSeconds();
        const times = year + "-" + month + "-" + date + " " + hours + ":" + minutes + ":" + seconds;
        const formattedDate = date_ob.toLocaleDateString('en-GB', {
          year: 'numeric',
          month: '2-digit',
          day: '2-digit',
          
      }).split('/').reverse().join('-');
        dt1 = new Date(formattedDate+" 9:45:00");
        dt2 = new Date(times);
        
        var diff =(dt2.getTime() - dt1.getTime()) / 1000;
        diff /= 60;
        
        const timeDelay =Math.round(diff);
        


        conn.query(
            `insert into hr_attendancedetailsmast(EmployeeId,Month,Year,EntryDate,EntryTime,DelayedEntry) 
                      values(?,?,?,?,?,?)`,
            [data.EmployeeId,month,year,data.EntryDate,data.EntryTime,timeDelay],
            (error, results, fields) => {
              if (error) {
                callBack(error);
              }
              return callBack(null, results);
            }
          );

    },addmasterDetals:(data,EmployeeUserName,Name,Shift,callBack) =>{
      const date_ob = new Date();
        
        const month = ("0" + (date_ob.getMonth() + 1)).slice(-2);
        const year = date_ob.getFullYear();
        let date = ("0" + date_ob.getDate()).slice(-2);
        let hours = date_ob.getHours();
        let minutes = date_ob.getMinutes();
        let seconds = date_ob.getSeconds();
        const times = year + "-" + month + "-" + date + " " + hours + ":" + minutes + ":" + seconds;
        const formattedDate = date_ob.toLocaleDateString('en-GB', {
          year: 'numeric',
          month: '2-digit',
          day: '2-digit',
          
      }).split('/').reverse().join('-');
      conn.query(
        `insert into hr_attendancemast(EmployeeId,Month,Year,EntryDate,EntryTime,EmployeeUserName,Name,ActionType,Shift)values(?,?,?,?,?,?,?,?,?)`,
        [data.EmployeeId,month,year,data.EntryDate,data.EntryTime,EmployeeUserName,Name,data.ActionType,Shift],
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results);
        }
      );
       
      

        
         

    },addmasterDetal:(data,EmployeeUserName,Name,Shift,time,callBack) =>{
      const date_ob = new Date();
        
        const month = ("0" + (date_ob.getMonth() + 1)).slice(-2);
        const year = date_ob.getFullYear();
        let date = ("0" + date_ob.getDate()).slice(-2);
        let hours = date_ob.getHours();
        let minutes = date_ob.getMinutes();
        let seconds = date_ob.getSeconds();
        const times = year + "-" + month + "-" + date + " " + hours + ":" + minutes + ":" + seconds;
        const formattedDate = date_ob.toLocaleDateString('en-GB', {
          year: 'numeric',
          month: '2-digit',
          day: '2-digit',
          
      }).split('/').reverse().join('-');
       
      
       
        
        const timeFormat = 'HH:mm:ss';
        
        const time1 = moment(time.EntryTime, timeFormat);
        const time2 = moment(data.EntryTime, timeFormat);
        console.log(moment.duration(time2.diff(time1)))
        
        const timeDifference = moment.duration(time2.diff(time1));
        
         hours = timeDifference.hours();
         minutes = timeDifference.minutes();
         seconds = timeDifference.seconds();

         
         const timeDelay = hours * 3600 + minutes * 60 + seconds;
          conn.query(
            `insert into hr_attendancemast(EmployeeId,Month,Year,EntryDate,EntryTime,EmployeeUserName,Name,ActionType,Shift,PresenceTime) 
                       values(?,?,?,?,?,?,?,?,?,?)`,
             [data.EmployeeId,month,year,data.EntryDate,data.EntryTime,EmployeeUserName,Name,data.ActionType,Shift,timeDelay],
             
             (error, results, fields) => {
               if (error) {
                 callBack(error);
               }
               return callBack(null, results);
             }
           );

      
        
         

    },
    attendenceupdateList:(data,id,callBack) =>{
      const date_ob = new Date();
        
        const month = ("0" + (date_ob.getMonth() + 1)).slice(-2);
        const year = date_ob.getFullYear();
        let date = ("0" + date_ob.getDate()).slice(-2);
        let hours = date_ob.getHours();
        let minutes = date_ob.getMinutes();
        let seconds = date_ob.getSeconds();
        const times = year + "-" + month + "-" + date + " " + hours + ":" + minutes + ":" + seconds;
        const formattedDate = date_ob.toLocaleDateString('en-GB', {
          year: 'numeric',
          month: '2-digit',
          day: '2-digit',
          
      }).split('/').reverse().join('-');
        dt = new Date(formattedDate+" 9:45:00");
        dt1 = new Date(formattedDate+" 18:00:00");
        dt2 = new Date(times);
        
        var diff =(dt2.getTime() - dt1.getTime()) / 1000;
        diff /= 60;
        
        const timeDelay =Math.round(diff);
        var diffs =(dt2.getTime() - dt.getTime()) / 1000;
        diffs /= 60;
        
        const toatlTime =Math.round(diffs);

      conn.query(
        `update hr_attendancedetailsmast set OutDate=?,OutTime=?, DelayedExit=?,TotalTimeInMinutes=? where EmployeeId = ? AND EntryDate = ?`,
        [
          data.OutDate,
          data.OutTime,
          timeDelay,
          toatlTime,
          id,
          formattedDate


          
        ],
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results[0]);
        }
      );

    },
    attendenceList:(employeeId, callBack) =>{
      const date_ob = new Date();
      const formattedDate = date_ob.toLocaleDateString('en-GB', {
        year: 'numeric',
        month: '2-digit',
        day: '2-digit',
    }).split('/').reverse().join('-');
        conn.query(
            `select * from hr_attendancedetailsmast where EmployeeId = ? and Status = 'P' AND EntryDate = ?`,
            [employeeId,formattedDate],
            (error, results, fields) => {
              if (error) {
                callBack(error);
              }
              return callBack(null, results[0]);
            }
          );

    },
    listAttendenceDetails:(employeeId,callBack)=>{
      const date_ob = new Date();
        
        const month = ("0" + (date_ob.getMonth() + 1)).slice(-2);
        const year = date_ob.getFullYear();
        let date = ("0" + date_ob.getDate()).slice(-2);
        let hours = date_ob.getHours();
        let minutes = date_ob.getMinutes();
        let seconds = date_ob.getSeconds();
        const times = year + "-" + month + "-" + date + " " + hours + ":" + minutes + ":" + seconds;
        const formattedDate = date_ob.toLocaleDateString('en-GB', {
          year: 'numeric',
          month: '2-digit',
          day: '2-digit',
          
      }).split('/').reverse().join('-');
      conn.query(
        `select EntryTime from hr_attendancemast where ActionType = 'IN' AND EmployeeId = ? AND EntryDate = ? ORDER BY SrNO DESC LIMIT 1`,
        [employeeId,formattedDate],
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results[0]);
        }
      );

    },
    getAttendence: (callBack) =>{
        conn.query(
            `select * from hr_attendancedetailsmast where Status = 'P'`,
            (error, results, fields) => {
              if (error) {
                callBack(error);
              }
              return callBack(null, results);
            }
          );

    },
    AttendenceListId: (id, callBack) =>{
     
      conn.query(
        `SELECT
        a.Name,
        a.EmployeeUserName,
        a.Shift,
        a.Month,
        a.year,
        a.EntryDate,
        b.EntryTime,
        b.OutTime,
        SUM(a.PresenceTime) AS TotalPresenceTime
    FROM
        hr_attendancemast a
    INNER JOIN
        hr_attendancedetailsmast b ON a.EmployeeId = b.EmployeeId AND a.EntryDate = b.EntryDate
    WHERE 
        a.EmployeeId = ?
    GROUP BY
        a.EmployeeId,
        a.EntryDate,
        a.Month,
        a.year,
        b.EntryTime,
        b.OutTime`,
        
        [id],
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results);
        }
      );
    },AttendenceListsId: (id, callBack) =>{
      const date_ob = new Date();
      const formattedDate = date_ob.toLocaleDateString('en-GB', {
        year: 'numeric',
        month: '2-digit',
        day: '2-digit',
    }).split('/').reverse().join('-');
   
     
      conn.query(
        `select * from hr_attendancemast where EmployeeId = ?  AND EntryDate = ? ORDER BY SrNo DESC`,
        [id,formattedDate],
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results[0]);
        }
      );
    },
    get_report_attendence:(id,callBack)=>{
      conn.query(
        `SELECT *
        FROM hr_attendancemast
        WHERE EntryDate = CURDATE() 
              AND EntryDate < CURDATE() + INTERVAL 7 DAY AND EmployeeId=?`,
              [id],
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results);
        }
      );

    }

}
