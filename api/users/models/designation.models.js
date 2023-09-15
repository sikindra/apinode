const conn = require("../../../config/database");


module.exports = {
    getDesignationList: (callBack) => {
        conn.query(
            `select * from hr_designation`,
            (error, results, fields) => {
              if (error) {
                callBack(error);
              }
              return callBack(null, results);
            }
          );
    },
    designationList:(name, callBack) =>{
        conn.query(
          `select * from hr_designation where DesignationCode = ? and Status = 'Active'`,
          [name],
          (error, results, fields) => {
            if (error) {
              callBack(error);
            }
            return callBack(null, results[0]);
          }
        );
    
        
    },
    addDesignationList:(name, callBack) =>{
        
        conn.query(
            `insert into hr_designation(DesignationCode,GracePeriod,EnableGracePeriod,Status) 
                      values(?,?,?,?)`,
            [name.DesignationCode,name.GracePeriod,name.EnableGracePeriod,'ACTIVE',],
            (error, results, fields) => {
              if (error) {
                callBack(error);
              }
              return callBack(null, results);
            }
          );

    },
    designationeditList:(data,name, callBack) =>{
      
      conn.query(
        `update hr_designation set DesignationCode=?,GracePeriod=?, EnableGracePeriod=?, Status=? where DesignationId = ?`,
        [
          data.DesignationCode,
          data.GracePeriod,
          data.EnableGracePeriod,
          "Active",
          name

          
        ],
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results[0]);
        }
      );

    },
    designationDelete: (data, callBack) => {
      conn.query(
        `delete from hr_designation where DesignationId = ?`,
        [data],
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          
          return callBack(null, results.affectedRows);
        }
      );
    }
}