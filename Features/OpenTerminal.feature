Feature: My Feature


Background: 
Given I assign "telnet" to variable "terminal_protocol"
Given I assign "10.3.10.133:4650" to variable "terminal_server"
Then I assign "HH0010" to variable "devcod"
Then I assign "NEHA.THAKRE" to variable "username"
Then I assign "Nthakre@123" to variable "password"
And I assign "CYCPALLOC7" to variable "location"


Scenario: Scenario Name
Given I "login terminal"
Then I open terminal connected to $terminal_server  with answerback $devcod
And I wait 10 seconds
Then I enter $devcod in terminal
And I wait 10 seconds
#Once I see cursor at line 4 column 2 in terminal
Then I enter $username in terminal
And I wait 10 seconds
#Once I see cursor at line 6 column 2 in terminal
Then I enter $password in terminal
And I wait 10 seconds
Then I enter $location in terminal
And I wait 10 seconds