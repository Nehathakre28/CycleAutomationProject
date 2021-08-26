Feature: My Feature



Scenario:Delete data from database
Given I connect to MySQL database "example" at "localhost" port 3306 logged in as "root" with password "mysql@123"

Given I execute SQL "delete from example.employee where Empid=1003;"



 @datacleanup
Scenario: data cleanup
Given I connect to MySQL database "example" at "localhost" port 3306 logged in as "root" with password "mysql@123"

