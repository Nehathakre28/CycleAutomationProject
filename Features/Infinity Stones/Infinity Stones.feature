###########################################################
# Copyright 2020, Tryon Solutions, Inc.
# All rights reserved.  Proprietary and confidential.
#
# This file is subject to the license terms found at 
# https://www.cycleautomation.com/end-user-license-agreement/
#
# The methods and techniques described herein are considered
# confidential and/or trade secrets. 
# No part of this file may be copied, modified, propagated,
# or distributed except as authorized by the license.
###########################################################
# Name:
# Date: 
# Description: This exercise will expose you to the various
# conditions that can be appended to a While loop and reinforce
# your troubleshooting knowledge.
############################################################ 
Feature: Infinity Stones

Background:
Given I import scenarios from "D:\CycleProject\Test\Features\Infinity Stones\Utilities\Infinity Stone Utilities.feature"

@instructions
Scenario: Instructions
Given I "update the Feature File Header with my name and the current date"
And I "execute the scenario 'Infinity'"
And I "see that the scenario is having issues"

When I "make changes to the Utility Feature File but not this Feature File"

Then I "see 'Snap!'"

@exercise
Scenario: Infinity
When I "obtain the Power Stone"
    When I assign 1 to variable "counter"
    While I verify number $counter is less than or equal to 5
        When I assign "TRUE" to variable "power_stone"
        Then I execute scenario "Counter"
        And I wait 6 seconds
    EndWhile

And I "obtain the Space Stone"
    And I assign "TRUE" to variable "continue"
    While I verify text $continue is equal to "TRUE"
        When I assign "TRUE" to variable "space_stone"
        Then I execute scenario "Continue Check"
        And I wait 5 seconds
    EndWhile

And I "obtain the Reality Stone"
    And I echo "Should I continue?"
    While I execute scenario "Validation Utility"
        When I assign "TRUE" to variable "reality_stone"
        And I wait 4 seconds
        
    EndWhile

And I "obtain the Soul Stone"
    And I assign 1 to variable "number"
    While I verify number $number is equal to 1
        When I assign "TRUE" to variable "soul_stone"
        Then I assign 2 to variable "number"
        And I wait 3 seconds
    EndWhile

And I "obtain the Time Stone"
	While I execute scenario "Check Switch"
    And I execute scenario "Check Switch"
    	When I assign "TRUE" to variable "time_stone"
        Then I wait 2 seconds
    EndWhile

And I "obtain the Mind Stone"
	Given I assign 0 to variable "outer_counter"
    And I assign 0 to variable "inner_counter"
	While I verify number $outer_counter is less than 1
    	Given I execute scenario "Increment Outer Counter"
    	While I verify number $inner_counter is less than 1
        	Given I execute scenario "Increment Inner Counter"
        	When I assign "TRUE" to variable "mind_stone"
        	Then I wait 1 seconds
        EndWhile
    EndWhile

Then I "snap"
    If I verify text $power_stone is equal to "TRUE"
    And I verify text $space_stone is equal to "TRUE"
    And I verify text $reality_stone is equal to "TRUE"
    And I verify text $soul_stone is equal to "TRUE"
    And I verify text $time_stone is equal to "TRUE"
    And I verify text $mind_stone is equal to "TRUE"
        Then I echo "Snap!"
    Else I "do not have the infinity stones"
        Then I fail step with error message "I have been defeated."
    EndIf