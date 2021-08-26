Feature: My Feature

Scenario Outline: Scenario Outline Name
Given I assign <username> to variable "username"
Given I assign <password> to variable "password"

Examples:
| username|password|
|"NEHA.THAKRE"| "NT@123"|

@tag
Scenario Outline: Scenario Outline Name
CSV Examples:D:\CycleProject\Test\Test Case Inputs\EX1.CSV

Given I assign <Var1> to variable "Var1"
Given I assign <Var2> to variable "Var2"
Then I echo $Var1
Then I echo $Var2

@tag2
Scenario Outline: Scenario Outline Name
CSV Examples:Test Case Inputs\EX1.CSV
#Given I assign "" to variable "Var1"
#Given I assign "" to variable "Var2"
#Then I type <TEXT> in element "<id|tag|className|cssSelector|text|xPath|linkText|name>:<ELEMENT_NAME>" in web browser
Then I assign all chevron variables to dollar variables
Then I echo $Var1
Then I echo $Var2

@tag3
Scenario Outline: Scenario Outline Name
CSV Examples:D:\CycleProject\Test\Test Case Inputs\EX1.CSV
#Given I assign "" to variable "Var1"
#Given I assign "" to variable "Var2"
Then I assign chevron variables "Var1" to dollar variables
Then I echo $Var1
#Then I echo $Var2