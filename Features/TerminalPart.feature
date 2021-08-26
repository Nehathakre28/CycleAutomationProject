Feature: My Feature


Background: 
Given I assign "telnet" to variable "terminal_protocol"
Given I assign "10.3.10.133:4650" to variable "terminal_server"
Given I assign "JHO005" to variable "devcode"


Scenario: Scenario Name
Given I "Terminal Open"
Given I open terminal connected to $terminal_server with answerback $devcode
Then I wait 10 seconds
Then I enter $devcode in terminal
Then I wait 10 seconds



