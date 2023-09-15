const conn = require("../../../config/database");


module.exports = {
    getLoginList:(callBack)=>{
        conn.query(
            `select * from hr_loginhistorymast where LoginStatus="ACTIVE"`,
            (error, results, fields) => {
              if (error) {
                callBack(error);
              }
              return callBack(null, results);
            }
          );

    }

}