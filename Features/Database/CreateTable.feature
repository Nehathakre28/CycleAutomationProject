Feature: My Feature



Scenario: Create table
Given I connect to MySQL database "example" at "localhost" port 3306 logged in as "root" with password "mysql@123"

#NewTable
Given I execute SQL "CREATE TABLE `example`.`money` (`idMoney` INT NOT NULL, `MoneyName` VARCHAR(45) NULL,PRIMARY KEY (`idMoney`));"
