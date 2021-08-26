Feature: Web Group Testing

Background: 
Given I import scenarios from "Utilities/Environment.feature"
	Then I execute scenario "Setup Wait Times"
    Then I import scenarios from "GroupTesting\Web Group Testing Utilities.feature"
	And I open "chrome" web browser
	Then I maximize web browser


Scenario: Web Group Testing
Given I "login to cycle automation"
# while I assign values in next row from "Telehack/Telehack Inputs/Controller.csv" to variables
# And I verify text $controller_num is equal to "0"
# 	When I reset line counter for "Telehack/Telehack Inputs/Controller.csv"
# 	And I echo "I am pausing"
# EndWhile
# Then I echo $controller_num
	Then I execute scenario "Log into cycle user portal"



