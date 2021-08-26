 Feature: Infinity Stone Utilities

@wip
Scenario: Counter
When I increase variable "counter" by 1

@wip
Scenario: Continue Check
When I assign "FALSE" to variable "continue"

@wip
Scenario: Validation Utility
When I assign "TRUE" to variable "continue"
If I verify text $continue is equal to "TRUE"
   When I assign "TRUE" to variable "reality_stone"
	Then I fail step with error message "I don't want to continue - I want to fail!"
EndIf


@wip
Scenario: Check Switch
Given I assign 11 to variable "switch"

If I verify number $switch is greater than 10
	When I assign "TRUE" to variable "time_stone"
	Then I fail step with error message "Switch overloaded!"
EndIf
  #When I increase variable "switch" by 1
  

@wip
Scenario: Increment Inner Counter
#When I execute scenario "Counter"
Given I increase variable "inner_counter" by 1

@wip
Scenario: Increment Outer Counter
#When I execute scenario "Counter"
Given I increase variable "outer_counter" by 1