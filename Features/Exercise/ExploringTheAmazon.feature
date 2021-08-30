#############################################################
#Test case:ExploringTheAmazon.feature 
#Date:30/08/2021
#Description: Verifying various actions can be performed on the Amazon website 
#Author:Neha Thakre
#website:Amazon
#Functional Area: Web
#Test Case Type: Regression
#Dataset: None
#Test Case Inputs: 
#Test Case Detail Input CSV:
#Test Case Verification Approach:A successful test case will be verified by a complete run and by manually comparing the echoed variables against the screenshots taken by Cycle. 
####################################################################
Feature: Exploring the Amazon


Background:
###############################################################
# Description: Imports dependencies and variables declartion
###############################################################
Given I import scenarios from "ExploringTheAmazon_Utilities.feature"
	And I import scenarios from "Utilities/Environment.feature"
    Then I execute scenario "Setup Wait Times"
	Then I assign "Chrome" to variable "browser"
	Then I assign "http://www.google.com" to variable "dstWebsite"
	And I assign "http://www.amazon.in/" to variable "dstWebpage"


Scenario: Exploring the Amazon
Given I "open the browser and navigate to the Amazon digital store"
	Then I execute scenario "Open Browser to Specified Page"
	Once I see element "xPath://div[@id='nav-logo']" in web browser

When I "search for an item"
	And I assign "compass" to variable "searchPhrase"
	Then I execute scenario "Search for Item"
	Then I wait $wait_short seconds
	And I save web browser screenshot

And I "return to Amazon's home page"
	When I execute scenario "Return to Amazon Homepage"

And I "navigate to the Best Sellers page"
	When I execute scenario "Navigate to Best Seller"

And I "return to Amazon's home page"
	When I execute scenario "Return to Amazon Homepage"
	
And I "navigate to the Prime Video selection"
	When I execute scenario "Prime Video Selection"