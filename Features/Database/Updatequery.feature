Feature: My Feature



Scenario: Update data into database
Given I connect to MySQL database "example" at "localhost" port 3306 logged in as "root" with password "mysql@123"

Then I  execute SQL "UPDATE `example`.`employee` SET `Employeename` = 'WMS' WHERE (`Empid` = '1004');"

@data
Scenario Outline: Scenario Outline Name

CSV Examples:Test Case Inputs\DatabaseInputs.CSV
Given I connect to MySQL database "example" at "localhost" port 3306 logged in as "root" with password "mysql@123"
Then I assign <Employeename> to variable "Empname"
And I  execute SQL "UPDATE `example`.`employee` SET `Employeename` = '"  $Empname "' WHERE (`Empid` = '17');"
