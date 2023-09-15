const {holidayAdd,getHoliday,delteHoliday} = require("../models/holiday")
const holiday = {
   
    addHoliday(req, res) {
        const body = req.body;
        holidayAdd(body,(err,results)=>{
            if (err) {
                console.log(err);
                return;
              }
              if (!results) {
                return res.json({
                success: 10,
                message: "Record not Found"
                });
              }
              return res.json({
                success: 100,
                message: 'Add Holiday Success'
            });

        });
        
        

    },listHoliday(req, res){
      getHoliday((err,results)=>
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

    },
    deleteHoliday(req,res){
      const employeeId = req.params.id;
      delteHoliday(employeeId,(err,results)=>
        {
          if (err) {
            console.log(err);
            return;
          }
          if (!results) {
            return res.json({
            success: 10,
            message: "Record not Found"
            });
          }
          return res.json({
            success: 1,
            data: 'Delete Holiday Successfully!'
        });


        });

    }
        

}
module.exports = holiday;