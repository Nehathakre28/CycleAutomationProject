Feature: My Feature



Background: 

Given I connect to MySQL database "example" at "localhost" port 3306 logged in as "root" with password "mysql@123"

Scenario: Select data from Database 

Given I connect to MySQL database "example" at "localhost" port 3306 logged in as "root" with password "mysql@123"
 
 
Then I execute SQL "select * from employee"
 If I verify 0 rows in result set
 Then I fail step with error message "No datafound"
 else I assign row 0 column "Employeename" to variable "emp_name"
 Then I echo $emp_name
 EndIf
@tag
Scenario: Scenario Name
 Given I assign 0 to variable "counter"
Then I execute SQL " SELECT COUNT(Empid) FROM example.employee;"
Then I assign row 0 column "COUNT(Empid)" to variable "emp_id"
Then I echo $emp_id
Then I execute SQL " SELECT * FROM example.employee;"

While I verify number $counter is less than  $emp_id 

Then I assign row $counter column "Empid" to variable "ID"
And I echo $ID
Then I increase variable "counter" by 1

EndWhile

@insertbulk

Scenario: Insert Bulk data

Given I assign 0 to variable "counter"
Then I execute SQL " SELECT COUNT(Empid) FROM example.employee;"
And I assign row 0 column "COUNT(Empid)" to variable "row_count"
Then I echo $row_count

While I verify number $counter is less than  10
Then I assign 2011 to variable "Emp_id" 
Then I assign variable "Emp_id" by combining $Emp_id $counter
Then I execute SQL "INSERT INTO `example`.`employee` (Empid, Employeename) VALUES ('" $Emp_id "', 'Cycle1');"
Then I increase variable "counter" by 1
EndWhile
 


@addcolumn
Scenario: Add column
Given I execute SQL "ALTER TABLE `example`.`employee` ADD COLUMN `Employeecity` VARCHAR(45) NULL AFTER `Employeename`;"
Then I execute SQL " SELECT COUNT(Empid) FROM example.employee;"
And I assign row 0 column "COUNT(Empid)" to variable "row_count"
Then I echo $row_count
Given I assign 0 to variable "counter"
Then I execute SQL " SELECT * FROM example.employee;"

While I verify number $counter is less than  $row_count
Then I assign "Nagpur" to variable "Emp_city" 

Then I assign row $counter column "Empid" to variable "ID"
And I echo $ID
#Then I execute SQL "INSERT INTO `example`.`employee` (Employeecity) VALUES ('" $Emp_city " ');"

Then I execute SQL "UPDATE `example`.`employee` SET `Employeecity` = 'Nagpur' WHERE (`Empid` = '" $ID "');"

Then I increase variable "counter" by 1
EndWhile