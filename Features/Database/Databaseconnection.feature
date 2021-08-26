Feature: My Feature


@example
Scenario: Database connection string
Given I connect to MySQL database "example" at "localhost" port 3306 logged in as "root" with password "mysql@123"
 
 
#  Then I execute SQL "select * from employee"
 
#  If I verify 0 rows in result set
#  Then I fail step with error message "No datafound"
#  else I assign row 0 column "Employeename" to variable "emp_name"
#  Then I echo $emp_name
#  EndIf
 
# @city
# Scenario: Scenario1
# Given I connect to MySQL database "world" at "localhost" port 3306 logged in as "root" with password "mysql@123"
 
 
#  Then I execute SQL "select * from city"
 
#  If I verify 0 rows in result set
#  Then I fail step with error message "No data found"
#  else I assign row 1 column "Name" to variable "city_name"
#  Then I echo $city_name
#  EndIf

#Given  I execute SQL "INSERT INTO `world`.`city` (`ID`, `Name`, `CountryCode`, `District`, `Population`) VALUES ('1001', 'Nagpur', 'IDN', 'East Java', '121212');"
