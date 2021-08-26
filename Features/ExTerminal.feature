Feature: Terminal

Scenario: login terminal
Given I "login terminals"
Given I assign "telnet" to variable "terminal_protocol"
Then I assign "10.3.10.133:4650" to variable "terminal_server"
And I assign "JHO001" to variable "devcod"
Given I assign "NEHA.THAKRE" to variable "username"
Given I assign "Nthakre@123" to variable "password"
And I assign "CYCPALLOC7" to variable "location"
Then I open terminal connected to $terminal_server with answerback $devcod
And I wait 10 seconds
Then I enter $devcod in terminal
And I wait 10 seconds

If I see cursor at line 4 column 2 in terminal
#Then I enter USERNAME from credentials "NEHA.THAKRE" in terminal
 And I enter $username in terminal
And I wait 10 seconds
EndIf
#Once I see cursor at line 4 column 2 in terminal
 #And I enter $username in terminal
#Once I see cursor at line 6 column 2 in terminal
 #And I enter $password in terminal
#Once I see cursor at line 6 column 4 in terminal
#Then I enter $location in terminal
#And I wait 10 seconds
Then I close terminal

