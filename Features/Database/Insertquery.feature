Feature: My Feature


@staticdata
Scenario:Insert query to database
Given I connect to MySQL database "example" at "localhost" port 3306 logged in as "root" with password "mysql@123"

Given  I execute SQL "INSERT INTO `example`.`employee` (Empid, Employeename) VALUES ('1005', 'Cycle');"


@Dyanmicdata
Scenario: Insert query to database with dyanmically
Given I connect to MySQL database "example" at "localhost" port 3306 logged in as "root" with password "mysql@123"

Then I assign "Automation" to variable "Emp_name"
And I execute SQL "INSERT INTO `example`.`employee` (Empid, Employeename) VALUES ('1006', ' " $Emp_name "');"



@dataloading
Scenario Outline: Dataloading from CSV to database

CSV Examples:Test Case Inputs\DatabaseInputs.CSV
Given I connect to MySQL database "example" at "localhost" port 3306 logged in as "root" with password "mysql@123"
Then I assign <Employeename> to variable "Empname"
And I execute SQL "INSERT INTO `example`.`employee` (Employeename) VALUES ('" $Empname "');"




