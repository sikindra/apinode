const {getLoginList} = require('../models/login.model');
const loginList = {
   
    loginlist(req, res) {
        getLoginList((err,results)=>
        {
          if (err) {
            console.log(err);
            return;
          }
          if (!results) {
            return res.json({
              success: 0,
              message: "Record not Found"
            });
          }
          
          return res.json({
            success: 1,
            data: results
          });

        });
        

    }
        

}
module.exports = loginList;