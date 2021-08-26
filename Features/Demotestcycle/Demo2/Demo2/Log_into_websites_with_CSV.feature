############################################################
#Feature:Log_into_websites_with_CSV.feature
# Description:
#This Feature logs into 2 websites using information contained in the file Logins.csv.
# For this Feature to run successfully, the user must first update the username and password information contained in Logins.csv and save that file in your Project Directory.
#
############################################################

Feature: Log into websites

Scenario: Log into daily websites
Given I "log into the Cycle User Portal"
	When I open "Chrome" web browser
	And I maximize web browser
	And I assign values in row 1 from "Features\Demotestcycle\Demo2\Demo2\Logins.csv" to variables
	Then I navigate to $Website in web browser within 60 seconds
	When I press keys Tab in web browser 2 times with .5 seconds delay
	And I type $Username in web browser
	And I press keys Tab in web browser
	And I type $Password in web browser
	And I click element "id:loginButton" in web browser
	And I wait 5 seconds
	Then I see title "Licenses" in web browser
Given I "log into blueyonder Warehouse"
	When I open new tab in web browser
	And I assign values in row 2 from 	         "Features\Demotestcycle\Demo2\Demo2\Logins.csv" to variables
	And I navigate to $Website in web browser within 60 seconds
	Then I type  $Username in element "xPath:(//input[@name='loginName'])[1]" in web browser
	Then I type $Password in element "xPath:(//input[@name='password'])[1]"  in web browser
	Then I click element "xPath://input[@id='loginButton']" in web browser
	And I wait 30 seconds
	Then I see element "xPath://label[text()='Hello NEHA']" in web browser
	And I wait 5 seconds
	Then I close web browser
