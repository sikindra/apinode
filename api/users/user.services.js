const conn = require("../../config/database");


module.exports = {

   
  getUserByUserName: (UserName, callBack) => {
    conn.query(
        `select * from hr_employeemaster where EmployeeUserName = ? and Status = "ACTIVE" `, [UserName],
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results[0]);
        }
      );
  },
  getUserByUserId: (UserId, callBack) => {
    conn.query(
      `select * from ivr_usermaster where ProfileId = ? and AccountStatus = "ACTIVE"`,
      [UserId],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results[0]);
      }
    );
  }
  ,getUserList: (UserId, callBack) => {
    conn.query(
      `select UserName,Balance,ProfileId from ivr_usermaster where ProfileId = ? and AccountStatus = "ACTIVE"`,
      [UserId],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results[0]);
      }
    );
  },getProfilesList: (UserId, callBack) => {
    conn.query(
      `select UserName,Balance,ProfileId from ivr_usermaster where ProfileId = ? and AccountStatus = "ACTIVE"`,
      [UserId],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },
  getHomeList:(callBack)=>{
    conn.query(`select UserName,Balance,ProfileId from ivr_usermaster where  AccountStatus = "ACTIVE"`,
    (error, results, fields) => {
      if (error) {
        callBack(error);
      }
      return callBack(null, results);
    }
    );

  },
  loginhistorymast:(data,LoginIP,LoginBrowser,LoginOperatingSystem,callBack)=>{
    const currentDate = new Date();
    const year = currentDate.getFullYear();
    const month = currentDate.getMonth() + 1;
    const day = currentDate.getDate();
    const hours = currentDate.getHours();
    const minutes = currentDate.getMinutes();
    const seconds = currentDate.getSeconds();
    const formattedDateTime = `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`;

    conn.query(
      `insert into hr_loginhistorymast(UserName,UserPassword,LoginIP,HostName,LoginTime,LoginStatus,RedirectPage,LoginBrowser,LoginOperatingSystem) 
                values(?,?,?,?,?,?,?,?,?)`,
      [
        data.userName,
        '******',
        LoginIP,
        data.hostname,
        formattedDateTime,
        'ACTIVE',
        data.RedirectPage,
        LoginBrowser,
        LoginOperatingSystem
      ],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );

  },
  getLoginhistory:(name,callBack)=>{
    const currentDate = new Date();
    const year = currentDate.getFullYear();
    const month = currentDate.getMonth() + 1;
    const day = currentDate.getDate();
    const hours = currentDate.getHours();
    const minutes = currentDate.getMinutes();
    const seconds = currentDate.getSeconds();
    const formattedDateTime = `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`;
    conn.query(
      `update hr_loginhistorymast set LogoutTime=?  where UserName = ? ORDER BY LoginSrNo DESC LIMIT 1`,
      [
        formattedDateTime,
        name,
        

        
      ],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results[0]);
      }
    );
  },addipAllocation:(data,callBack)=>{
    const currentDate = new Date();
    const year = currentDate.getFullYear();
    const month = currentDate.getMonth() + 1;
    const day = currentDate.getDate();
    const hours = currentDate.getHours();
    const minutes = currentDate.getMinutes();
    const seconds = currentDate.getSeconds();
    const formattedDateTime = `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`;

    conn.query(
      `insert into hr_empipmaster(EmployeeId,IPAddress,EntryDateTime,Active) 
                values(?,?,?,?)`,
      [
        data.EmployeeId,
        data.IPAddress,
        formattedDateTime,
        '1'
        
      ],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );

  },Ipllocation: (callBack) => {
    conn.query(
      `select EmployeeId,IPAddress,EntryDateTime from hr_empipmaster where Active = "1"`,
     
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },getipAllcoation: (employeeId,callBack) => {
    conn.query(
      `select EmployeeId,IPAddress,EntryDateTime from hr_empipmaster where EmployeeId=? and Active = "1"`,[employeeId],
     
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results[0]);
      }
    );
  },getipAddress: (ipAddress,callBack) => {
    conn.query(
      `select EmployeeId,IPAddress,EntryDateTime from hr_empipmaster where IPAddress=? and Active = "1"`,[ipAddress],
     
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results[0]);
      }
    );
  },
    
    
  
   
   
    
}