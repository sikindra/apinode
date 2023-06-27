const conn = require("../../config/database");


module.exports = {

   
  getUserByUserName: (UserName, callBack) => {
    conn.query(
        `select * from ivr_usermaster where UserName = ? and AccountStatus = "ACTIVE" `, [UserName],
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
  }
  
   
   
    
}