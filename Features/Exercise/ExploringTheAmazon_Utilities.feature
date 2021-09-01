#####################################################################
#Utility:ExploringTheAmazon_Utilities.feature
#Description: These Utility Scenarios perform actions specific to Amazon Workflow activities
#Author:Neha Thakre
#website:Amazon
#Functional Area: Web
#Test Case Type: Regression
#Dataset: None
# Public Scenarios:
#   -Open Browser to Specified Page - Opens the specified web browser 
#   -Return to Amazon Homepage-return to the Amazon Homepage
#   -Search for Item-Searches for an item in the Amazong search bar
#   -Navigate to Best Seller- Navigates to the Best Seller Menu
#   -Prime Video Selection-Navigate to Prime Video from Amazon
# Assumptions:
# None
# Notes:
# None 
####################################################################
Feature: ExploringTheAmazon_Utilities



@wip @public
Scenario: Open Browser to Specified Page
#############################################################
# Description: Opens the specified web browser to a 
#     designated page on the internet
# Inputs:
# Required:
# browser - The name associated with the web browser of choice
# dstWebPage - The page the web browser will be navigated to
#	Optional:
#		None
# Outputs:
#	None
#############################################################
Given  I "open the browser and navigate the website"
	When I open $browser web browser
	Then I navigate to $dstWebsite in web browser
		And I wait  $wait_short seconds
	Then I navigate to $dstWebpage in web browser 
		And I wait  $wait_short seconds
	Once I see element "xPath://a[@aria-label='Amazon']" in web browser
		Then I echo "I am on Amazon Home Page"
			And I wait  $wait_short seconds


@wip @public
Scenario: Return to Amazon Homepage
#############################################################
# Description: Clicks on the Amazing Icon to return to the 
#     Amazon Homepage
# Inputs:
#	Required:
#		None
#	Optional:
#		None
# Outputs:
#	None
# Note: You do not have to use the starter xPath below. It 
#     is only there to help you get started. 
#############################################################
Given I "return to the Amazon Homepage"
	When I click element "xPath://a[@id='nav-logo-sprites']" in web browser
	Then I echo "Return to Amazon Homepage"
		And I wait $wait_long seconds


@wip @public
Scenario: Search for Item
#############################################################
# Description: Searches for an item in the Amazon search bar
# Inputs: Create a variable so that you can reuse this
#     scenario for multiple items
#	Optional:
#		None
# Outputs:
#	None
# Note: You can search the Step Guide under the Help menu to 
#     find a step that takes a screenshot of the web browser
#############################################################
Given I "searches for an item"
	When I assign "compass" to variable "searchPhrase"
		And I wait $wait_med seconds
	Then I type $searchPhrase in element "xPath://input[@id='twotabsearchtextbox']" in web browser 
		And I wait  $wait_short seconds
	Then I click element "xPath://input[@id='nav-search-submit-button']" in web browser
		And I wait  $wait_short seconds
		Then I save screenshot


@wip @public
Scenario: Navigate to Best Seller
#############################################################
# Description: Navigates to the Best Seller Menu
# 
# Inputs: None
#	Optional:
#		None
# Outputs:
#	None
# Note: The element for Best Seller menu is 
#     'a[text()='Best Sellers']' but that describes multiple
#     elements on the page, so we need to be more specific 
#     by first specifying a unique ancestor and then drilling
#     down into the specific element.
#############################################################
Given I "navigate to the Best Sellers page"
	When I click element "xPath://a[text()='Best Sellers']" in web browser
		Then I wait $wait_long seconds
	If I see element "xPath://div[text()='Amazon Bestsellers']" in web browser
		Then I echo "We are on the Best Sellers page"
	else I echo "We are not on the Best Sellers page"
	EndIf


@wip @public
Scenario: Prime Video Selection
#############################################################
# Description: This will Navigate to Prime Video from Amazon
# 
# Inputs:
#	Required:
#		None
#	Optional:
#		None
# Outputs:
#	None
#############################################################
Given I "navigate to Prime Video"
	When I click element "xPath:(//span[text()='All'])[2]" in web browser
		Then I wait  $wait_short seconds
	Then I click element "xPath://div[text()='Amazon Prime Video']" in web browser
		And I wait  $wait_short seconds
	Then I click element "xPath://a[text()='All Videos']" in web browser
		And I wait  $wait_short seconds
	If I see element "xPath://h1[text()='Welcome to Prime Video']" in web browser
		Then I echo "I am on Prime Video page"
	else I echo "I am not on Prime Video page"
	EndIf
	And I wait $wait_med seconds
	