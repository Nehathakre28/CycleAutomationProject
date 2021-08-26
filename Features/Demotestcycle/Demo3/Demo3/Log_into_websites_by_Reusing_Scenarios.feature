############################################################
#Feature:Log_into_websites_by_Reusing_Scenarios.feature
# Description:
# 	This Feature logs into 2 websites using information contained in the file Logins.csv.
# 	For this Feature to run successfully, the user must first update the username and password information contained in Logins.csv.
# Import Feature/Scenarios:
#    	 Log_in_Environment.feature
# Resources:
#     	Logins.csv
############################################################
Feature: Log into websites


###############################################################
# Description: Imports dependencies and variables declartion
###############################################################
Background:
Given I import scenarios from "Log_in_Environment.feature"
Then I assign 10 to variable "min_time"
Then I assign 30 to variable "max_time"
Then I assign 5 to variable "short_time"

Scenario: Log into daily websites
Given I open "Chrome" web browser
And I maximize web browser
When  "I log into the Cycle User Portal"
Then I open new tab in web browser
And I wait $short_time seconds
And "I log into blueyonder warehouse"
Then I "have logged into the websites I need to start the day"