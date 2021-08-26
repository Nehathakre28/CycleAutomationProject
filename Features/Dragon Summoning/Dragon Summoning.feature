Feature: Dragon Summoning

Background:
Given I import scenarios from "D:\CycleProject\Test\Features\Dragon Summoning\Data Management Utilities.feature"
And I import scenarios from "D:\CycleProject\Test\Features\Dragon Summoning\Dragon Summoning Utilities.feature"
When I execute scenario "Data Setup"
#Then I execute scenario "Data Override"

After Scenario:
If I verify number $dragons_summoned is equal to 5
	Then I echo "The dragons are summoned!"
ElsIf I "have not summoned five dragons"
	Then I fail step with error message "I should be summoning five dragons!"
EndIf

@exercise
Scenario: Summon Five Dragons
If I verify text $continue is equal to "FALSE"
	Then I fail step with error message "The test has failed!"
Elsif I verify text $continue is equal to "TRUE"
	Given I assign 5 to variable "quantity_of_dragons"
	When I execute scenario "Summon Dragons"
Else I "see that nothing makes sense"
	Then I fail step with error message "The test has failed!"
Endif