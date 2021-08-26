#############################################################
#Utility: Telehackcloseterminal utilities.feature
#Description: These Utility Scenarios perform actions specific to terminal return  to the Home Screen and closing Telehack terminal
#Author:Neha Thakre
#website:telehack.com
#Functional Area: Terminal
#Test Case Type: Regression
#Dataset: None
# Public Scenarios:
#    -Return to the Home Screen-  Navaigate to Telehack terminal Home Screen
#    -End Process and Echo Results-Echoing various results and close terminal
#Test Case Inputs: None
#Test Case Detail Input CSV: None
# Assumptions:
# None
# Notes:
# None
####################################################################
Feature: Telehack close terminal utilities 

@wip @public
Scenario: Return to the Home Screen
#############################################################
# Description: This scenario will conduct the return back to the Home Screen in the terminal and verify that the back to the home screen or not
# CSV Files:
#	None
# Inputs:
#	Required:
#		None
#	Optional:
#		None
# Outputs:
# 		None
#############################################################  
#Step 7: Return to the Home Screen
Given I "step for quit terminal and return to the Home Screen"
	Then  I enter "Quit" in terminal
    And I wait $wait_response seconds
    Then I enter "yes" in terminal
    And I wait $wait_response seconds
      
When I "verify that the back to the home screen"      
	Then I enter "?" in terminal
    And I wait $wait_response seconds
If I see "Command, one of the following: " in terminal
         Then I echo " Arrvied back to Home Screen"
    else I echo "Not Arrvied back to Home Screen"
endif
  
@wip @public
Scenario: End Process and Echo Results 
#############################################################
# Description: This scenario will perform echoing all the results and closing telehack terminal 
# CSV Files:
#	None
# Inputs:
#	Required:
#		None
#	Optional:
#		None
# Outputs:
#   description,Sum,zork_release,grue_message-Variables from various screen	############################################################# 
#Step 8: End Process and Echo Results   
Given I "echo all results of telehack terminal"
   Then I echo $description
   And I echo $Sum
   Then I echo $zork_release
   And I echo $grue_message
   And I wait $wait_response seconds
When I "close telehack terminal"
   Then I close terminal
   And I echo "The telehack test is complete"