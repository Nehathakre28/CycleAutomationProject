Feature: WhileLoops
Scenario: While loop
Given I assign "Yes" to variable "FirstVar"
And I prompt "Enter value (yes/no)" and assign user response to variable "SecondVar"
While I verify variable "SecondVar" is equal to variable "FirstVar"
Then I prompt "Continues request (Yes/No)" and assign user response to variable "Answer"
EndWhile


