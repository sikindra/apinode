const { validationResult, check } = require('express-validator');
const {validateEmployeeEmails} = require('../models/employeeAllocation');
const validate = {
    validateAllocationFields: [
       
      check('EmployeeId').notEmpty().withMessage('EmployeeId is required.'),
    
      check('AllocatedEmployeeId').notEmpty().withMessage('Allocated EmployeeId is required.'),
     
      
        
      ],
      validateEmployeeFields:[
        check('EmployeeId').notEmpty().withMessage('EmployeeId is required.'),
        
        // check('EmployeePassword').notEmpty().withMessage('EmployeePassword is required.'),
        check('UserType').notEmpty().withMessage('UserType is required.'),
        
        check('Name').notEmpty().withMessage('Name is required.'),
        check('LastName').notEmpty().withMessage('LastName is required.'),
        check('Mobile')
          .notEmpty().withMessage('Mobile is required.')
          .isNumeric().withMessage('Mobile must be a numeric value.')
          .isLength({ min: 10, max: 10 }).withMessage('Mobile must be exactly 10 digits.'),
        check('Email')
          .notEmpty().withMessage('Email is required.')
          .isEmail().withMessage('Invalid email format.'),
        check('DateOfBirth').notEmpty().withMessage('DOB is required.'),
        check('Education').notEmpty().withMessage('Education is required.'),
        check('MaritalStatus').notEmpty().withMessage('MaritalStatus is required.'),
        check('PreviousCompany').notEmpty().withMessage('PreviousCompany is required.'),
        check('Experience').notEmpty().withMessage('Experience is required.'),
        check('Designation').notEmpty().withMessage('Designation is required.'),
        check('DateOfJoining').notEmpty().withMessage('DateOfJoining is required.'),
        check('WorkShift').notEmpty().withMessage('WorkShift is required.'),
        check('BloodGroup').notEmpty().withMessage('BloodGroup is required.'),
        check('Address').notEmpty().withMessage('Address is required.'),
        check('City').notEmpty().withMessage('City is required.'),
        check('State').notEmpty().withMessage('State is required.'),
        
        check('Country').notEmpty().withMessage('Country is required.'),
        check('Pincode').notEmpty().withMessage('Pincode is required.'),

      ],
      validateLeaveFields:[
        check('EmployeeId').notEmpty().withMessage('Employee Id is required.'),
        check('RequestDateTime').notEmpty().withMessage('Request Date Time is required.'),
        check('LeaveStartDate').notEmpty().withMessage('Leave Start Date is required.'),
        check('LeaveEndDate').notEmpty().withMessage('Leave End Date is required.'),


      ],
      validateAttendane:[
        check('EmployeeId').notEmpty().withMessage('Employee Id  is required.'),
        check('EntryDate').notEmpty().withMessage('Entry Date  is required.'),
        check('EntryTime').notEmpty().withMessage('Entry Time  is required.'),
        

      ],
      validateAttendanes:[
        
        check('OutDate').notEmpty().withMessage('Out Date is required.'),
        check('OutTime').notEmpty().withMessage('Out Time is required.'),

      ],
      validateWorkshift:[
        check('WorkShiftFrom').notEmpty().withMessage('Work Shift From   is required.'),
        check('WorkShiftTo').notEmpty().withMessage('Wor Shift To  is required.'),

      ],
      ChangePassword:[
        check('currentPassword').notEmpty().withMessage('Current Password  is required.'),
        check('newPassword').notEmpty().withMessage('New Password is required.'),

      ],
      validateipAllocation:[
        check('EmployeeId').notEmpty().withMessage('EmployeeId is required.'),
        check('IPAddress').notEmpty().withMessage('IP Address is required.'),

      ],
      validateEmployeeEmail(req,res){
        const body = req.body;
        validateEmployeeEmails(body,(err,results)=> {
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
          console.log(results);

      })
    }
        
        

      
    

}
module.exports = validate;