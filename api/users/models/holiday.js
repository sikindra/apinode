
const conn = require("../../../config/database");


module.exports = {
    holidayAdd:(data,callBack)=>{
        conn.query(
            `insert into hr_holidaymast(HolidayDate,Description,OfficeId) 
                      values(?,?,?)`,
            [data.HolidayDate,data.Description,data.OfficeId,],
            (error, results, fields) => {
              if (error) {
                callBack(error);
              }
              return callBack(null, results);
            }
          );


    },
    getHoliday:(callBack)=>{
      conn.query(
        `select * from hr_holidaymast`,
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results);
        }
      );

    },
    delteHoliday:(id,callBack)=>{
      conn.query(
        `delete from hr_holidaymast where SrNo = ?`,
        [id],
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          
          return callBack(null, results.affectedRows);
        }
      );

    }
}