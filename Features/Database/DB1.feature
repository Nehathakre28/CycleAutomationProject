Feature: My Feature


Background: 
#Given I import scenarios from "D:\CycleProject\Test\Features\Database\Databaseconnection.feature"
#Then I execute scenario "Database connection string"


@tag2
Scenario: sql commands
Given I connect to MySQL database "example" at "localhost" port 3306 logged in as "root" with password "mysql@123"
#insert
#Given I assign "Test3" to variable "Emp_name"
Given I execute SQL script "Test Case Inputs\Sqlscript2.sql"
#Given  I execute SQL "INSERT INTO `example`.`employee` (Empid, Employeename) VALUES ('1004', ' " $Emp_name "');"



# Given I assign 10 to variable "Num_1"
# Given I assign 20 to variable "Num_2"
# Then I execute Groovy "Result=Num_1+Num_2"
# Then I echo $Result


#update
#Given I  execute SQL "UPDATE `example`.`employee` SET `Employeename` = 'Neha' WHERE (`Empid` = '2');"

#delete
#Given I execute SQL "delete from example.employee where Empid=1;"


@tag
Scenario: Scenario Create Table
#NewTable
#Given I execute SQL "CREATE TABLE `example`.`money` (`idMoney` INT NOT NULL, `MoneyName` VARCHAR(45) NULL,PRIMARY KEY (`idMoney`));"


