Feature: My Feature



Scenario: Sql Script using file

Given I connect to MySQL database "example" at "localhost" port 3306 logged in as "root" with password "mysql@123"


#Scriptusingsqlfile
Given I execute SQL script "Test Case Inputs\Sqlscript.sql"

If I verify 0 rows in result set
 Then I fail step with error message "No datafound"
 else I assign row 0 column "Employeename" to variable "emp_name"
 Then I echo $emp_name
 EndIf

