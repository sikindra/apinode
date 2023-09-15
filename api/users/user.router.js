const { login,homeEntity ,loginhistory,loginhistorys,ipAllocation,getipAllocation} = require("./user.controller");
const express = require('express');
const { searchEmployee,listEmployee,listAttendence,listcitymaster,addEmployee,viewEmployee,editEmployee,deleteEmployee,typeEmployee,changePasswordEmployee } = require("./employee.controller");
const { listdesignation,addDesignation,viewDesignation,editDesignation,deleteDesignation } = require("./controller/designation");
const { check } = require('express-validator');
const employeeAllocation = require('./controller/employeeAllocation');
const employee = require('./controller/employee');
const { checkToken } = require("../../auth/token_validation");
const validate = require("./controller/validate");
const employeeLeave = require("./controller/employeeLeave");
const loginList = require("./controller/loginList");
const holiday = require("./controller/holiday");
const state = require("./controller/state");
const attendence = require("./controller/attendance");
const workshift = require("./controller/workshift");

const router = require("express").Router();


router.post("/login", login);
router.post("/loginhistory", loginhistory);
router.put("/loginhistory/:id", loginhistorys);
router.post("/ipAllocation", validate.validateipAllocation, ipAllocation);
router.get("/ipAllocation", getipAllocation);

router.get("/view-attendence", listAttendence);
router.get("/citymaster/:id", listcitymaster);
router.get("/state", state.listState);

//employee list api
router.get("/listemployee", listEmployee);
router.post("/list_employee", validate.validateEmployeeFields, addEmployee);
router.get("/list_employee/:id", viewEmployee);
router.get("/list_employeeType/:id", typeEmployee);

router.patch("/list_employee/:id", validate.validateEmployeeFields, editEmployee);
router.delete("/list_employee/:id", deleteEmployee);
router.get("/list_employee/search/:id", searchEmployee);
router.post("/list_employee/changePassword/:id",validate.ChangePassword, changePasswordEmployee);

//designation list Api
router.get("/list_designation", listdesignation);
router.post("/list_designation", addDesignation);
// router.get("/list_designation/:id",checkToken, viewDesignation);
router.patch("/list_designation/:id", editDesignation);
router.delete("/list_designation/:id", deleteDesignation);


//Employee Allocation list api
router.post("/list_allocation",validate.validateAllocationFields, employeeAllocation.addAllocation);

router.get("/list_allocation", employeeAllocation.listAllocation);
router.delete("/list_allocation/:id", employeeAllocation.deleteAllocation);

//Manage Leave list api

router.get("/list_leave", employeeLeave.listleave);
router.get("/list_leave/:id", employeeLeave.listidleave);
router.get("/list_leaves", employeeLeave.listleaves);
router.get("/list_leaves/:id", employeeLeave.listidleaves);
router.post("/list_leave",validate.validateLeaveFields, employeeLeave.addLeave);
router.put("/list_leave/:id", employeeLeave.updateLeave);
// router.delete("/list_allocation/:id", employeeLeave.deleteAllocation);


//Attendance
router.post("/list_attendance",validate.validateAttendane, attendence.addAttendence);
router.get("/list_attendance",attendence.listAttendence);
router.get("/list_attendance/:id", attendence.attendenceListId);
router.get("/list_attendances/:id", attendence.attendenceListsId);
router.put("/list_attendance/:id",validate.validateAttendanes, attendence.UpdateAttendence);
router.get("/report_attendance/:id",attendence.report_attendance);

//Workshift
router.post("/list_workshift",validate.validateWorkshift, workshift.addWorkshit);
router.get("/list_workshift", workshift.listWorkshit);
router.delete("/list_workshift/:id", workshift.deleteWorkshit);
router.put("/list_workshift/:id", workshift.updateWorkshit);


//Login History
router.get("/loginList", loginList.loginlist);

//add-holiday
router.post("/list_holidy", holiday.addHoliday);
router.get("/list_holidy", holiday.listHoliday);
router.delete("/list_holidy/:id", holiday.deleteHoliday);
 









router.get("/", homeEntity);



module.exports = router;



