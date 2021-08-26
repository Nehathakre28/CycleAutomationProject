#############################################################
#Test case:TestingTelehack.feature 
#Description: Verifying various actions can be performed on the Telehack website via a terminal
#Author:Neha Thakre
#website:telehack.com
#Functional Area: Terminal
#Test Case Type: Regression
#Dataset: None
#Test Case Inputs: help_name,help_description
#Test Case Detail Input CSV:Telehack Inputs.csv
#Test Case Verification Approach:A successful test case will be verified by a complete run and by manually comparing the echoed variables against the screenshots taken by Cycle. 
####################################################################
Feature: Terminal Group Testing Feature


Background: 
###############################################################
# Description: Imports dependencies and variables declartion
###############################################################
Given I "import all telehack utilities"
 	And I import scenarios from "Telehack\TelehackConnection Utilities.feature"
 	And I import scenarios from "Telehack\Telehack Utilities.feature"
 	And I import scenarios from "Telehack\Telehackcloseterminal utilities.feature"
    
When I "declare waits variables"
    Then I assign 5 to variable "wait_response"
    And I assign 2 to variable "min_wait"
    And I assign 10 to variable "max_wait"
Given I "reading data from csv"
	Then I assign all chevron variables to dollar variables
    
@telehack
Scenario:Telehack Testing

Given I "Connecting to the Telehack.com"
    when I execute scenario "Connect to Telehack.com"
    
#While I assign next line from "Telehack/Telehack Inputs/Controller.csv" to variable "controller_num"
# while I assign values in next row from "Telehack/Telehack Inputs/Controller.csv" to variables
# And I verify text $controller_num is equal to "0"
# 	When I reset line counter for "Telehack/Telehack Inputs/Controller.csv"
# 	And I echo "I am pausing"
#     And i enter "?" in terminal
# EndWhile


while  I assign values in next row from "Telehack/Telehack Inputs/Controller.csv" to variables
And I verify text $controller_num is equal to "1"
	When I reset line counter for "Telehack/Telehack Inputs/Controller.csv"
		If I verify text $help_name is equal to "zork"         
     		Then I execute scenario "Capture Zork description"
        Elsif  I verify text $help_name is equal to "help"   
        	Then I execute scenario "Start Zork"
            
        Elsif  I verify text $help_name is equal to "roll"  
        	Then I execute scenario "Verify Rolls"
        EndIf
EndWhile

          
          
          
# And I "Enter roll and Sum of two random numbers"
#     when I execute scenario "Verify Rolls"
    
# And I "Enter zork and Copy release number"  
#     when I execute scenario "Start Zork"

# And I "Enter and verify houses"
#    when I execute scenario "In Zork, Enter the House"
  
# And I "Verify that you were eaten by a grue"  
#     when I execute scenario "Die by a Grue"
 
# And I "Return back to the Home Screen" 
#    when I execute scenario "Return to the Home Screen"
         
# And I "Close the terminal"     
#    Then I execute scenario "End Process and Echo Results"
      