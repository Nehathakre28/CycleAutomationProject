#############################################################
#Test case: WebSetupAndxPathSearch1.feature 
#Description: Verifying that Cycle can open the web browser, navigate to Google.com, and then close itself by running the test
#Author: Neha Thakre
#website:
#Functional Area: Web
#Test Case Type: Regression
#Dataset: None
#Test Case Inputs: None
#Test Case Detail Input CSV: None
#Date:31/08/2021
####################################################################
Feature: Web Setup and xPath Search Feature


Background: 
###############################################################
# Description: Imports dependencies and variables declartion
###############################################################
Given I import scenarios from "Utilities/Environment.feature"
	Then I execute scenario "Setup Wait Times"
    Then I assign "Chrome" to variable "browser"

Scenario: Browser Verification
Given  I "open the browser and navigate the website"
	When I open $browser web browser
	And I wait $wait_short seconds
	Then I navigate to "https://my.cycleautomation.com/user-manual/web_testing/a-web-testing-setup" in web browser
	And I wait $wait_short seconds
	Once I see element "xPath://div[text()='Cycle User Manual']" in web browser
	Then I close web browser
And I "am succesful!"
	Then I echo "I am succesful"