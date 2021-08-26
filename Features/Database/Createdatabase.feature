Feature: My Feature



Scenario: New Database
Given I connect to MySQL database "example" at "localhost" port 3306 logged in as "root" with password "mysql@123"

#NewDatabase
Given I execute SQL "CREATE SCHEMA `cycle` ;"
