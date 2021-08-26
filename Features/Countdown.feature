Feature: Countdown

Scenario: Scenario Countdown
Given I assign 10 to variable "count"
If I verify number $count is greater than or equal to 11
Then I decrease variable "count" by 1
Elsif I verify number $count is greater than or equal to 10
Then I increase variable "count" by 2
else I decrease variable "count" by 5
EndIf
And I echo $count
