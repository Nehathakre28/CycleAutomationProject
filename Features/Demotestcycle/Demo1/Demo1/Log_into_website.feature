############################################################
#Feature:Log_into_website.feature
# Description:
#This Feature logs into the Cycle User Portal.
# For this Feature to run successfully, the user must first update the username and password information of this file.
#
############################################################
Feature: Log into website

###############################################################
# Description: Imports dependencies and variables declartion
###############################################################
Background: 
Given I assign "Chrome" to variable "browser"
when I assign "nthakre@delaplex.com" to variable "username"
And  I  assign "NT@cycle" to variable "password"
Then I assign "Licenses" to variable "title_name"
Then I assign 5 to variable "wait_time"


#############################################################
# Description: This scenario performs Logging into Cycle User Portal
# CSV Files:
#	None
# Inputs:
#	Required:
#     username - username of user
#		password- password of user
#	Optional:
#		None
# Outputs:
# 		None
############################################################# 
Scenario: Log into Cycle User Portal
Given I "log into the Cycle User Portal"
When I open $browser web browser
And I maximize web browser
And I navigate to "https://my.tryonsolutions.com" in web browser within 60 seconds
When I press keys Tab in web browser 2 times with .5 seconds delay
And I type $username in web browser
And I press keys Tab in web browser
And I type $password in web browser
And I click element "id:loginButton" in web browser
Then I see title $title_name  in web browser within 10 seconds
And I wait $wait_time seconds
Then I close web browser