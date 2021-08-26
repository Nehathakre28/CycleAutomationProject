
#####################################################################
#Utility:Telehack Utilities.feature
#Description: These Utility Scenarios perform actions specific to Terminal Workflow activities
#Author:Neha Thakre
#website:telehack.com
#Functional Area: Terminal
#Test Case Type: Regression
#Dataset: None
# Public Scenarios:
#   -Capture Zork description - Perform Connect to Telehack Terminal process
#   -Verify Rolls-Verifying Rolls and Find the sum of the two random numbers 
#   -Start Zork-Navigate to Zork release screen
#   -In Zork, Enter the House- Playing zork in telehack
#   -Die by a Grue-Navigate to grue message screen
# Assumptions:
# None
# Notes:
# None 
####################################################################
Feature: Telehack Group Testing Utilities

@wip @public
Scenario: Capture Zork description
#############################################################
# Description:This scenario performs an operation how to capture Zork description 
#It will verifying description of matches with terminal or not.also return back to the Home screen
# CSV Files:
#	None
# Inputs:
#	Required:
#     help_name - name of command
#		help_description- description of command
#	Optional:
#		None
# Outputs:
# 		None
############################################################# 
#Step2: Capture Zork description
Given I "Steps to capture zork description"
	When I enter "help" in terminal
     And I wait $wait_response seconds

While I do not see $help_description in terminal
 Then I move cursor DOWN in terminal
   And I wait $min_wait seconds
EndWhile

Then I locate $help_description in terminal
	And I wait $min_wait seconds
	And I copy terminal line $terminal_line from column $terminal_column through next 25 columns to variable "description"
 Given I trim string $description as variable "description"
 And I wait $min_wait seconds
And I "verify descriptions of matches with terminal"
If I verify text $help_description is equal to $description
	Then I echo "Descriptions of " $help_name "Matches to " $description " from terminal"       
   Else I echo "Descriptions are not same"
EndIf
    
When I "quit back to the home screen"    
	And I enter "Q" in terminal
    And I wait $wait_response seconds
 
	Then I "verify that the back to the home screen"  
		And I enter "?" in terminal
	    And I wait $wait_response seconds
		Once I see "Command, one of the following: " in terminal
    	Then I echo "I am return to Home Screen"
 
@wip @public
Scenario: Verify Rolls
#############################################################
# Description: This scenario perfoms rolls action and Find sum of that rolls
#It will check to see if the sum of the two numbers is beneath 13 or not.and verify  retuen back to the Home screen
# CSV Files:
#	None
# Inputs:
#	Required:
#		Number1-first value of dice
#       Number2-Second value of dice
#	Optional:
#		None
# Outputs:
# 		Sum- Adding of the two dice
#############################################################  
#Step3:Verify Rolls
Given I "Enter the roll"
	When I enter "roll" in terminal
	And I wait $max_wait seconds
    
	When I copy terminal line 7 columns 6 through 6 to variable "Number1"
	And I copy terminal line 7  columns 16 through 16 to variable "Number2"
    And I wait $wait_response seconds

	And I "convert string variable to interger variable"
	Then I convert string variable "Number1" to INTEGER variable "rollno_1"
	And I convert string variable "Number2" to INTEGER variable "rollno_2"
	When I execute Groovy "Sum = rollno_1+ rollno_2"
	And I echo $Sum
    Then I wait $wait_response seconds
       
 And I "Verify that the sum of the two numbers is beneath 13"      
If I verify number $Sum is less than 13
    Then I echo "Sum of the two numbers is beneath 13"
    else  I echo "Sum of the two numbers is not beneath 13"
EndIf
    
 When I "verify that the back to the home screen"  
    Then I enter "?" in terminal
     And I wait $wait_response seconds
Once I see "Command, one of the following: " in terminal
     Then I echo " Arrvied back to Home Screen"
    
@wip @public
Scenario: Start Zork
#############################################################
# Description: This scenario navigate to Zork release screen
#It will copying zork release from zork screen and verify that the Zork game start screen
# CSV Files:
#	None
# Inputs:
#	Required:
#		None
#	Optional:
#		None
# Outputs:
# 		zork_release-release version of zork
#############################################################  
#Step4: Start Zork
Given I "Steps for start the zork screen"
	Then I enter "zork" in terminal
	And I wait $wait_response seconds
      
	When I locate "Release" in terminal
	Then I copy terminal line $terminal_line columns $terminal_column through 11 to variable "zork_release"
	And I echo $zork_release
    
And I "verify that the Zork game start screen"
	Once I see "Welcome to ZORK." in terminal
    Then I echo "Arrvied at the Zork game start screen"
  
@wip @public
Scenario:In Zork, Enter the House
#############################################################
#Description: This scenario will conduct playing zork in telehack 
#It will also performs actions on houses in zork and verifying it
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
#Step5: In Zork, Enter the House
Given I "enter into south of house"
	Then I enter "Go South" in terminal
    And I wait $wait_response seconds

When I "Verify that I am South of House"
	Once I see "South of House" in terminal
	Then I echo "I am South of House"
	And I wait $wait_response seconds
    
When I "enter into east of house"
	Then I enter "Go East" in terminal
    And I wait $wait_response seconds
     
Then I "Verify that I am Behind House"
	Once I see "Behind House" in terminal
    Then I echo "I am Behind House"
    And I wait $wait_response seconds
     
Then I "open window in house"
	And I enter "Open Window" in terminal
   	And I wait $wait_response seconds
   
And I "Verify that allow entry to window"
	Once I see "With great effort, you open the window far enough to allow entry." in terminal
    Then I echo "Allowed entry"
    And I wait $wait_response seconds
    
When I "enter into kitchen in house"
   Then  I enter "Enter Window" in terminal
   And I wait $wait_response seconds

Then I "Verify that I am in kitchen"
	Once I see "Kitchen" in terminal
  	Then I echo "I am in the Kitchen"
    And I wait $wait_response seconds
  
@wip @public
Scenario: Die by a Grue
#############################################################
# Description:This scenario will navigate to grue message screen and copying grue message and it will also verifying that grue message on screen
# CSV Files:
#	None
# Inputs:
#	Required:
#		None
#	Optional:
#		None
# Outputs:
# 		grue_message- message from go north screen
#############################################################  
#Step 6: Die by a Grue
Given I "Enter the Go up house"
	Then I enter "go up" in terminal
    And I wait $wait_response seconds
     
And I "verify that Go up message"
	If I see "I am likely to be eaten by a grue" in terminal
      Then I echo  "I am likely to be eaten by a grue"
   elsIf I see "You can't go that way." in terminal 
   	  Then I fail step with error message "Go up is not show expected output"
   else I echo "I am not likely to be eaten by a grue"
   EndIf
      And I wait $wait_response seconds
     
When I "Enter the Go north in house"   
    Then I enter "Go north" in terminal
    And I wait $wait_response seconds
If I see "Oh, no!" in terminal
     And I locate "Oh, no!" in terminal
	 Then I copy terminal line $terminal_line columns $terminal_column through 63 to variable "grue_message"
     And I echo $grue_message
   elsIf I see "You can't go that way." in terminal 
   	 Then I echo  "Go north is not showing expected output"
   else I echo "We are not in right direction"
EndIf  

When I "verify that grue message on screen"   
If I see $grue_message in terminal
  Then I echo "Eaten by a grue"
 elsIf I see "You can't go that way." in terminal 
	And I echo "Go north is not showing expected output"
   else I echo "Not eaten by a grue"
EndIf
   And I wait $wait_response seconds
   
   