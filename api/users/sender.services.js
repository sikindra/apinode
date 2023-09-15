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
      `select * from sms_sendermaster_dlt where UserId = ? and Status IN ('APPROVED', 'PENDING') order by SrNo desc`,
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
      `select * from sms_entitymaster where UserId = ? and Status IN ('ACTIVE', 'PENDING') order by SrNo desc`,
      [UserId],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );

  }
  ,listEntity:(EnterId,userId, callBack)=>{
    // return callBack(null, userId);
    
    conn.query(
      `select EntityId from sms_entitymaster where UserId = ? and SrNo= ? and Status IN ('ACTIVE', 'PENDING') `,
      [userId,EnterId],
      
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results[0]);
      }
    );
    

  },
  addSenderList:(data,userId,EnterId, callBack)=>{
   
    conn.query(
      `insert into sms_sendermaster_dlt(SenderId,DltEntityId,Status,UserId) 
                values(?,?,?,?)`,
      [
        data.newSender,
        EnterId,
        'PENDING',
        userId,
        
      ],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );

  },
  addEntityList:(data,userId, callBack)=>{
    conn.query(
      `insert into sms_entitymaster(EntityId,Remark,Status,UserId) 
                values(?,?,?,?)`,
      [
        data.entity,
        data.Remark,
        'ACTIVE',
        userId,
        
      ],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );

  },
  senderLists:(EnterId,userId, callBack)=>{
    conn.query(
      `select EntityId from sms_sendermaster_dlt where UserId = ? and DltEntityId= ? and Status IN ('APPROVED', 'PENDING') `,
      [userId,EnterId.entitys],
      
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );

  },
  deleteEntityList:(EnterId,userId, callBack)=>{
   
    conn.query(
      `update sms_entitymaster set  Status=? where EntityId = ? and UserId = ?`,
      [
        'DELETED',
        EnterId.entity,
        userId
        
      ],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );

  }
 
 
   
   
    
}