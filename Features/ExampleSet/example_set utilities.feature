#############################################################
#Utility :example_set utilities.feature 
#Description: This
#Author:Neha Thakre
#Scenarios:
# Example Set- Example sets are simple collections of data
#
#Functional Area: Example Set
#Test Case Type: Utility
# Assumptions:
# None
#
# Notes:
# None
#
####################################################################
Feature: ExampleSet Feature

Background: 
###############################################################
# Description: Imports dependencies and variables declartion
###############################################################
Given I assign "chrome" to variable "browser"
Then I assign 5 to variable "min_time"

#############################################################
# Description: Example Sets are stored on whatever database Cycle is pointed at for its Data Store Connection.
# 
# MSQL Files:
#	None
# Inputs:
#	Required:
#		url-url for navigate the page
#      websitename- specified websitename
#	Optional:
#		None
# Outputs:
#	None
#############################################################
Scenario Outline: Example Set
Datastore Examples: Demo
Given I "open the web browser"
	When I open $browser web browser
    Then I navigate to <url> in web browser
    Then I maximize web browser
    And I echo <websitename>
    Then I wait $min_time seconds
    Then I close web browser


