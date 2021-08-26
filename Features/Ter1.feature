
    Feature: My Feature
Background:
Given I assign "telnet" to variable "terminal_protocol"
And I assign "10.3.10.133:4650" to variable "terminal_server"
And I assign "RDT001W" to variable "devcod"
And I assign "NEHA.THAKRE" to variable "username"
And I assign "CYCPALLOC8" to variable "location"

Scenario:Terminal test
Given I open terminal connected to $terminal_server with answerback $devcod
And I wait 10 seconds
And I enter $devcod in terminal
And I wait 10 seconds
If I see cursor at line 4 column 2 in terminal
Then I enter USERNAME from credentials "NEHA.THAKRE" in terminal
# And I enter $username in terminal
And I wait 10 seconds
EndIf
If I see cursor at line 6 column 2 in terminal
Then I enter PASSWORD from credentials "Nthakre@123" in terminal
And I wait 10 seconds
EndIf

If I see cursor at line 6 column 4 in terminal
Then I enter $location in terminal
And I wait 10 seconds
EndIf
If I see cursor at line 8 column 4 in terminal
Then I enter "HAND" in terminal
And I wait 10 seconds
EndIf
If I see cursor at line 10 column 4 in terminal
Then I enter "CYCWKARE" in terminal
And I wait 10 seconds
EndIf
If I see cursor at line 12 column 15 in terminal
Then I enter "3" in terminal
And I wait 10 seconds
EndIf
# Once I move cursor DOWN in terminal
# And I see cursor at line 3 column 1 in terminal
# And I wait 5 seconds
# And I enter "Test" in terminal
# # And I size terminal to 45 lines and 100 columns
# When I type USERNAME from credentials "SONAM.GUND" in terminal
# And I type PASSWORD from credentials "SONAM.GUND" in terminal
# Then I press keys "F7" in terminal
# Given I type option for "User Options" menu in terminal
# Then I wait 5 seconds
# Once I see "User Options" on line 1 in terminal
# Then I type option for "Set Home Work Are" menu in terminal
# Once I see "Home Work Area:" in terminal
# And i echo "IN TERMINAL"
# And I enter "Full Inv Move" in terminal
# #Then I press keys "F1" in terminal 3 times with 2 seconds delay
# #And I move cursor UP in terminal
# If I see cursor at line 1 column 1 in terminal
# Then I echo "cursor at 12 5"
# EndIf
# And I see "Full Inv Move" in terminal within 1000 ms
# If I verify terminal is OPENED
# Then I echo "Opend"
# EndIf
After Scenario:
#Then I reset terminal device "RDT010" in warehouse "WMD1"
And I close terminal