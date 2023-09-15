const conn = require("../../../config/database");


module.exports = {

    addWorkshitList:(data, callBack) =>{
        conn.query(
            `insert into hr_workshiftmaster(WorkShiftFrom,WorkShiftTo,Status) 
                      values(?,?,?)`,
            [data.WorkShiftFrom,data.WorkShiftTo,'1',],
            (error, results, fields) => {
              if (error) {
                callBack(error);
              }
              return callBack(null, results);
            }
          );

    },
    getWorkshitList:(callBack) =>{
        conn.query(
            `select * from hr_workshiftmaster where  Status = '1'`,
            (error, results, fields) => {
              if (error) {
                callBack(error);
              }
              return callBack(null, results);
            }
          );

    },WorkshitDelete:(id,callBack) =>{
      conn.query(
        `delete from hr_workshiftmaster where SrNo = ?`,
        [id],
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          
          return callBack(null, results.affectedRows);
        }
      );

    },editWorkShift:(id,data,callBack)=>{
      conn.query(
        `update hr_workshiftmaster set WorkShiftFrom=?,WorkShiftTo=? where SrNo = ?`,
        [
          data.WorkShiftFrom,
          data.WorkShiftTo,
          id

          
        ],
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results[0]);
        }
      );
    }
}