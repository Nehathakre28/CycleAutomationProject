Feature: My Feature

Scenario: Database connection string
Given I connect to MySQL database "example" at "localhost" port 3306 logged in as "root" with password "mysql@123"



Then I execute SQL "select * from employee"
IF I verify "Test" in row 0 column "Employeename" in result set
And I assign row 0 column "Employeename" to variable "emp_name"
 Then I echo $emp_name
 else I fail step
EndIf