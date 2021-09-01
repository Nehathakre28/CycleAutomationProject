#############################################################
#Test case: WebSetupAndxPathSearch1.feature 
#Description: Verifying that Cycle can open the web browser, navigate to tryonsolutions.com, and then close itself by running the test
#Author: Neha Thakre
#website: www.tryonsolutions.com
#Functional Area: Web
#Test Case Type: Regression
#Dataset: None
#Test Case Inputs: None
#Test Case Detail Input CSV: None
#Date:
####################################################################
Feature: Web Setup and xPath Search Feature


Background: 
###############################################################
# Description: Imports dependencies and variables declartion
###############################################################
Given I import scenarios from "Utilities/Environment.feature"
	Then I execute scenario "Setup Wait Times"
    Then I assign "Chrome" to variable "browser"
	And I assign "https://www.tryonsolutions.com" to variable "destinationWebsite"

Scenario:Browser Verification
Given  I "open the browser and navigate the website"
	When I open $browser web browser
	Then I wait  $wait_short seconds
	Then I navigate to $destinationWebsite in web browser 
	And I wait  $wait_short seconds
	Then I close web browser
