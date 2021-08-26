Feature: IT Just Fits(Date:1 june 2021)


Background: 
Given I assign 55 to variable "gizmos"

@instructions @1
Scenario: Setting up Feature File
If I verify number $gizmos is less than or equal to 50
	Then I echo "It fits!"
Else I echo "Too many gizmos!"
EndIf

@instructions @2
Scenario: If I Have More Options
When I prompt "Plz Enter Value Greater than 50" for integer and assign user response to variable "gizmos"
If  I verify  number $gizmos is less than or equal to 70
And I verify number $gizmos is greater than 50
Then I echo "This will fit in the big bag"
Then I assign variable "Var1" by combining $gizmos
And i echo $Var1
Else I echo "This will not fit in the big bag" 
EndIf


@instructions @3
Scenario: While Away the Time
When I prompt "Plz Enter Value Greater than 50" for integer and assign user response to variable "gizmos"

Then I assign variable "Var1" by combining $gizmos
And i echo $Var1

And I convert string variable "Var1" to INTEGER variable "SetVar"

while I verify number $SetVar is greater than or equal to 50
Then I decrease variable "SetVar" by 1
Then I echo "This will fit in the big bag"
And I echo $SetVar
EndWhile


@instructions @4
Scenario: A Gizmo Saved is a Gizmo Earned
When I prompt "Plz Enter Value Greater than 50" for integer and assign user response to variable "gizmos"

Then I assign variable "Var1" by combining $gizmos
And i echo $Var1

And I convert string variable "Var1" to INTEGER variable "SetVar"
If I verify number $SetVar is less than or equal to 75
Then I echo "Less than 75 "
While I verify number $SetVar is less than or equal to 75
Then I increase variable "SetVar" by 1
And i echo $SetVar
EndWhile
Else I echo "That's too many gizmos!"
EndIf