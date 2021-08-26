Feature: Combine variable

Background: 
@Combine_variable
Scenario: Combine variable
Given I "Combine two variable"
Then I assign  "Neha" to variable "First_Name"
And I assign "Thakre" to variable "Last_Name"
Then I wait 5 seconds
Then I assign variable "Full_Name" by combining $First_Name " " $Last_Name
And  I echo $Full_Name

@conversion
Scenario: Conversion
Given I "Convert type"
Then I prompt "Enter a first Number" and assign user response to variable "First_Number"
And I echo $First_Number

Then I prompt "Enter a second number" for integer and assign user response to variable "Second_Number"
And I echo $Second_Number