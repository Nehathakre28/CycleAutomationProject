#############################################################
#Utility :Window Native App testing.feature 
#Description: This
#Author:Neha Thakre
#Scenarios:
# Window Native App Testing- automate calculator Window Native App 
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
Feature: Window Native App testing Feature


Background: 
###############################################################
# Description: Imports dependencies and variables declartion
###############################################################
Given I assign 3 to variable "min_time"

Scenario: Window Native App Testing
#############################################################
# Description: This will automate calculator Window Native App 
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
	When I open app "Calculator" with id "Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"
   	 	Then I "Clicking numbers in calculator"
	Then I click object "automationId:num8Button" in app within $min_time seconds
    Then I click object "automationId:num6Button" in app within $min_time seconds
    Then I click object "automationId:plusButton" in app within $min_time seconds
    Then I click object "automationId:num5Button" in app within $min_time    seconds
    Then I click object "automationId:num1Button" in app within $min_time   seconds
    Then I click object "automationId:equalButton" in app within $min_time    seconds
    Then I see object "automationId:CalculatorResults" in app
    And I assign "Name" from object "automationId:CalculatorResults" in app to variable "Sum"
	Then I echo $Sum
  	And I wait $min_time seconds
   	Then I close app
    