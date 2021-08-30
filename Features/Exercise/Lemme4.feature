#############################################################
#Test case:Lemme4.feature 
#Description: Verifying that Cycle can open the web browser, navigate to Google.com, and then close itself by running the test
#Author:Neha Thakre
#website:Tryon Solutions
#Functional Area: Web
#Test Case Type: Regression
#Dataset: None
#Test Case Inputs: None
#Test Case Detail Input CSV:None
#
####################################################################
Feature: Lemme Google That Feature


Background: 
###############################################################
# Description: Imports dependencies and variables declartion
###############################################################
Given I import scenarios from "Utilities/Environment.feature"
	Then I execute scenario "Setup Wait Times"
	Then I assign "chrome" to variable "browser"
	And I assign "http://www.google.com" to variable "dstWebsite"
	And I assign "Tryon Solutions" to variable "searchPhrase"


Scenario: Lemme Google That
Given  I "open the browser and navigate the website"
	When I open $browser web browser
	And I navigate to $dstWebsite in web browser
	Once I see element "xPath://input[@title='Search']" in web browser within $wait_med seconds
	Then I type $searchPhrase in element "xPath://input[@title='Search']" in web browser
	Then I wait  $wait_short seconds
	And I press keys ENTER in web browser
	Then I click element "xPath://h3[text()='Tryon Solutions']" in web browser
	And I wait $wait_med seconds
Then I "verify that I am on Tryon solutions page"    
	If I see element "xPath://img[@alt='Tryon Solutions']" in web browser
		Then I echo "I am on Tryon solutions page"
	Else I echo "I am not on Tryon solutions page"
	EndIf
	Then I close web browser
