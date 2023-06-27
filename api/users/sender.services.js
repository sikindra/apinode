const conn = require("../../config/database");


module.exports = {
   
 
    getTemplateList:(UserId, callBack) =>{
    conn.query(
      `select * from sms_templatemaster_dltnew where ProfileId = ? and ShowStatus IN ('APPROVED', 'PENDING')`,
      [UserId],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );

  },
  getsenderList:(UserId, callBack) =>{
    conn.query(
      `select * from sms_sendermaster_dlt where UserId = ? and Status IN ('APPROVED', 'PENDING')`,
      [UserId],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );

  },
  getEntityList:(UserId, callBack) =>{
    conn.query(
      `select * from sms_entitymaster where UserId = ? and Status IN ('ACTIVE', 'PENDING')`,
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