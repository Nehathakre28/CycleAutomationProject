Feature: Exponent utilities
Background: Define variables
Given I assign 2 to variable "base"
Given I assign 3 to variable "exponent"
Given I assign 1 to variable "result"
Given I  assign 1 to variable "counter"


Scenario: Calculating Exponent

Given I echo "Calulating Executing Exponent Statement"
While I verify number $counter is less than or equal to $exponent
	Then I multiply variable "result" by $base
    And I increase variable "counter" by 1
    Then I echo $result
EndWhile


