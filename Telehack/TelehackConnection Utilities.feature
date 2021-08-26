#############################################################
#Utility: TelehackConnection Utilities.feature
#Description: These Utility Scenario perform actions specific to connecting to Telehack Terminal
#Author:Neha Thakre
#website:telehack.com
#Functional Area: Terminal
#Test Case Type: Regression
#Dataset: None
# Public Scenarios:
#     -Connect to Terminal - Perform Connect to Telehack Terminal process
#Test Case Inputs: None
#Test Case Detail Input CSV: None
# Assumptions:
# None
# Notes:
# None
####################################################################
Feature: Telehack Connection Utilities




@wip @public
Scenario:Connect to Telehack.com
####################################################################
# Description: This scenario performs connecting to Telehack.com in terminal
#It will also verify that successfully connected to Telehack.com or not
# CSV Files:
#	None
# Inputs:
#	Required:
#  None
#	Optional:
#		None
# Outputs:
# 		None
#############################################################  
#Step 1: Connect to Telehack.com
Given I open terminal connected to "telehack.com" sized to 30 lines and 77 columns
    Then I wait $wait_response seconds    
    And I "verify that successfully connected Telehack terminal"
    If I see "Connected to TELEHACK" in terminal
         Then I echo "I am successfully Connected to Telehack "
    else I echo "I am not Connected to Telehack"
    endif