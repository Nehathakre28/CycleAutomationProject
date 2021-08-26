Feature: Dataset_loading_cleanup



Scenario:Dataset loading and cleanup

Given I connect to MySQL database "example" at "localhost" port 3306 logged in as "root" with password "mysql@123"
#Executing database
Then I execute SQL dataset "Datasets/dataloading"
#execute cleanup scripts
And I execute cleanup script for SQL dataset "Datasets/dataloading"