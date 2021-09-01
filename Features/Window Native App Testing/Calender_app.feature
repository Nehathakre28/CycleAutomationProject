#############################################################
#Utility :Calender_app.feature 
#Description: This will perform testing on Calender Window Native App 
# 
#Author:Neha Thakre
#Scenarios:
# Window Native App Testing- automate Calender Window Native App 
#
#Functional Area: Window app
#Test Case Type: feature
# Assumptions:
# None
#
# Notes:
# None
#
####################################################################
Feature: Calender_app Feature


Scenario: Window Native App Testing
#############################################################
# Description: This will automate Calender Window Native App 
# 
# MSQL Files:
#	None
# Inputs:
#	Required:
#		None
#	Optional:
#		None
# Outputs:
#	None
#############################################################
Given I "opem window app with ID"
	When I open app "Calendar" with id "microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.calendar"
    	Then I click object "automationId:Day_2021-08-05T00:00:00Z" in app within 3 seconds
    	And I wait 5 seconds
    	Then I close app