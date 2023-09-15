const {getStateList} = require('../models/state');
const state = {
   
    listState(req, res) {
        getStateList((err,results)=>
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
module.exports = state;