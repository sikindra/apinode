const conn = require("../../../config/database");


module.exports = {
    getStateList:(callBack)=>{
        conn.query(
            `select * from statemaster where Active="1"`,
            (error, results, fields) => {
              if (error) {
                callBack(error);
              }
              return callBack(null, results);
            }
          );

    }

}