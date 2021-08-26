Feature: Dragon Summoning

@wip
Scenario: Summon Dragons
Given I verify variable "quantity_of_dragons" is assigned
And I assign 0 to variable "dragons_summoned"
While I verify number $dragons_summoned is less than $quantity_of_dragons
	Given I "summon Dragon"
	And I execute scenario "Hello World"
    Then I increase variable "dragons_summoned" by 1
Endwhile

@wip
Scenario: Hello World
Given I echo "Hello World!"