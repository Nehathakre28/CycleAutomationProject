Feature: Search Inventory



###########################################################
#Description:Search for Inventory Web screen
#Browser:Chrome
#login Portal:http://10.3.10.133:8060/rp/login
#Input:
#      Inventory
#Output:
#       Successfully Search Inventory Web screen
############################################################
Scenario: Search for Inventory Web screen
Given I click element "xPath://input[@placeholder='Search']" in web browser
And I wait 5 seconds
Then I assign "Inventory" to variable "Inventory_var"
Then I type $Inventory_var in element "xPath://input[@id='jdaSearchField-1011-inputEl']" in web browser
And I press keys ENTER in web browser
And I wait 10 seconds
###########################################################
#Description:Navigate to the Inventory screen
#Browser:Chrome
#login Portal:http://10.3.10.133:8060/rp/login
#Input:
#      Inventory -> Inventory
#Output:
#       Successfully Open Inventory screen
############################################################
Then I scroll to element "xPath://td[text()='Inventory -> Inventory']" in web browser
And I wait 2 seconds
Then I click element "xPath://td[text()='Inventory -> Inventory']" in web browser
And I wait 25 seconds

