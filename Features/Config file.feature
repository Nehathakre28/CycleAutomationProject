Feature: My Feature


@tag
Scenario: Config Scenario

Given I assign value of "Status" from config file "Test Case Inputs\status.config" to variable "conf_path"
Then I echo $conf_path

Given I assign value of "Name" from config file "Test Case Inputs\status.config" to variable "Name_conf"
Then I echo $Name_conf


@tag1
Scenario: Scenario Name
Given I assign values from config file "Test Case Inputs/Devcod.conf" to variables
Then I echo $devcod
Then I echo $vehtyp
Then I echo $user
Then I echo $wh_id 


@tag2
Scenario: Scenario 2
Given I assign values from config file "Test Case Inputs/WMD2.conf" to variables

Then I echo $devcod
Then I echo $vehtyp
Then I echo $user
Then I echo $wh_id 
Then I echo $wh_id2




