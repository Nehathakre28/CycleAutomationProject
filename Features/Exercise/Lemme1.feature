#############################################################
#Test case: Lemme1.feature 
#Description: Performing open the web browser, navigate to the destination website, wait 2 seconds, and then close the web browser
#Author: Neha Thakre
#website: Tryon Solutions
#Functional Area: Web
#Test Case Type: Regression
#Dataset: None
#Test Case Inputs: None
#Test Case Detail Input CSV: None
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


Scenario: Lemme Google That
Given  I "open the browser"
	When I open $browser web browser
	Then I navigate to $dstWebsite in web browser
	Then I type "Tryon Solutions" in element "xPath://input[@title='Search']" in web browser
	And I wait  $wait_short seconds
When I "navigate the website"
	Then I click element "xPath://span[contains(text(),'Tryon Solutions')]" in web browser
	Then I click element "xPath://h3[text()='Tryon Solutions']" in web browser
	And I wait $wait_med seconds
	Then I close web browser