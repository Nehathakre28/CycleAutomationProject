Feature: My Feature

Background: 
Given I assign "telnet" to variable "terminal_protocol"
Given I assign "10.3.10.133:4650" to variable "terminal_server"
Given I assign "FFF001" to variable "devcode"
Given I assign "NEHA.THAKRE" to variable "username"



Scenario: Scenario Name
Given I "T2"
Given I open terminal connected to $terminal_server with answerback $devcode
Then I wait 10 seconds
Then I enter $devcode in terminal
Then I wait 10 seconds
#Once I see cursor at line 4 column 2 in terminal
Then I enter $username in terminal

