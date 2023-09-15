const conn = require("../../config/database");


module.exports = {
    getEmployeeList: (callBack) => {
        conn.query(
            `select * from hr_employeemaster where  Status = "ACTIVE" AND UserType !="ADMIN ORDER BY DESC"  `,
            (error, results, fields) => {
              if (error) {
                callBack(error);
              }
              return callBack(null, results);
            }
          );
      },
      getAttendene: (callBack) => {
        conn.query(
            `select * from hr_attendancemast where ActionType = "ACTIVE"`,
            (error, results, fields) => {
              if (error) {
                callBack(error);
              }
              return callBack(null, results);
            }
          );
      },
      getcitymater: (data,callBack) => {
        conn.query(
            `select * from citymaster where Active = "1" and StateName =?`,
            [data],
            (error, results, fields) => {
              if (error) {
                callBack(error);
              }
              return callBack(null, results);
            }
          );
      },
      employeeList: (data,callBack)=>{
        conn.query(
          `select * from hr_employeemaster where EmployeeId = ? and Status = 'ACTIVE'`,
          [data],
          (error, results, fields) => {
            if (error) {
              callBack(error);
            }
            return callBack(null, results[0]);
          }
        );

      },
      addEmployeeList: (data, callBack)=>{




        
        conn.query('INSERT INTO hr_employeemaster SET ?', data,
        (error, results, fields) => {
            if (error) {
              callBack(error);
            }
            return callBack(null, results);
          }
        );

      },addEmployeeListByEmail:(data, callBack)=>{


      
          conn.query('SELECT * FROM hr_employeemaster WHERE Email = ?', data.Email,
          
          (error, results, fields) => {
            if (error) {
              callBack(error);
            }
            return callBack(null, results[0]);
          }
          );
        


      },updateEmployee:(employeeId,data, callBack) =>{
        conn.query(
          `UPDATE hr_employeemaster SET ? WHERE EmployeeId = ?`,
          [
            data,
            employeeId
  
            
          ],
          (error, results, fields) => {
            if (error) {
              callBack(error);
            }
            return callBack(null, results[0]);
          }
        );
      },employeeDelete:(data, callBack)=>{
        conn.query(
          `delete from hr_employeemaster where EmployeeId = ?`,
          [data],
          (error, results, fields) => {
            if (error) {
              callBack(error);
            }
            
            return callBack(null, results.affectedRows);
          }
        );
      },employeeType:(data, callBack)=>{
        conn.query('SELECT * FROM hr_employeemaster WHERE UserType = ?', data,
          
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results);
        }
        );

      },employeeId:(data,callBack)=>{
        conn.query('SELECT * FROM hr_employeemaster WHERE EmployeeId = ?', data.EmployeeId,
          
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results[0]);
        }
        );

      },
      employeeSerach:(data,callBack)=>{
        
        conn.query(`SELECT * FROM hr_employeemaster WHERE Name like '%${data}' OR EmployeeUserName like '%${data}' OR Designation like '%${data}' OR Email like '%${data}' OR Mobile like '%${data}'`,
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results[0]);
        }
        );
      },employeePasswordList:(body,employeeId, callBack)=>{
        conn.query('SELECT EmployeePassword FROM hr_employeemaster WHERE EmployeeId = ? AND EmployeePassword = ?', [employeeId,body.currentPassword],
          
        (error, results, fields) => {
          if (error) {
            callBack(error);
          }
          return callBack(null, results[0]);
        }
        );

      },employeeChangpassword:(body,employeeId, callBack)=>{
        conn.query(
          `UPDATE hr_employeemaster SET EmployeePassword=? WHERE EmployeeId = ?`,
          [
            body.newPassword,
            employeeId
  
            
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