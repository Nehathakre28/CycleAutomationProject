Feature: My Feature


Background: 


Scenario Outline: Scenario1
Given I assign <username> to variable "username"
Given I assign <Password> to variable "Password"
Then I assign chevron variables "username" to dollar variables
#Then I assign all chevron variables to dollar variables

Examples:
| username |Password|
|"NEHA.THAKRE"|"Nthakre@123"|



@Tag1
Scenario: Scenario Name
Given I execute scenario "Scenario1"
Then I echo $username
#Then I echo $Password



Scenario Outline: Shape
Given I assign <height> to variable "height"
Given I assign <width> to variable "width"
#Given I assign <shape> to variable "shape"
Then I assign all chevron variables  to dollar variables

Examples:
| height | width | 
| 4 | 8 | 



@Tag2
Scenario: Scenario Name
Given I execute scenario "Shape"
Then I echo $width
Then I echo $height







