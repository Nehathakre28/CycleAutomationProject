Feature: My Feature

Scenario Outline: Scenario1
Given I assign <username> to variable "username"
Given I assign <password> to variable "password"
Then I assign all chevron variables to dollar variables
Examples:
| username |password|
|"NEHA.THAKRE"|"Nthakre@123"|


@tag
Scenario: Scenario Name
Given I execute scenario "Scenario1"
Then I echo $username
Then I echo $password


@tag2
Scenario: Scenario Name
Given I assign "New1001" to variable "New_Var"
Given I assign "old2001" to variable "Old_Var"

Then I replace variables in string "${Old_Var}" and store as variable "New_Var"
Then I echo $New_Var

@tag3
Scenario: Scenario Name
Given I "Tablelist"
Given I create list "Tablelistof2"
Then I assign 1 to variable "Num1"
Then I assign 1 to variable "Var"
Given I assign 10 to variable "Nos"

While I verify number $Num1 is less than or equal to $Nos

Then I append element $Var to list "Tablelistof2"
Then I multiply variable "Num1" by 2
EndWhile

Then I increase variable "Num1" by 1
Then I echo $Num1

