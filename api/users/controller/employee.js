const { validationResult, check } = require('express-validator'); 
const employeeAllocation = {
   
    addEmployee(req, res) {
        const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }
        console.log('hjg')
    }

}
module.exports = employeeAllocation;