Feature: Exercise3

Background: 
Given I assign "chrome" to variable "browser"
Given I assign "https://www.tryonsolutions.com" to variable "destinationWebsite"
Given I import scenarios from "WebSetupAndxPathSearch1.feature"
And I execute scenario "Browser Verification"

Scenario: Scenario
Given I open $browser web browser
And I wait 2 seconds
Then I navigate to $destinationWebsite in web browser 
Given I wait 2 seconds
If I see element "xPath://img[@alt='Tryon Solutions']" in web browser
Then I echo "I am on right page"
Else I echo "I am not on right page"
EndIf
Then I wait 5 seconds
And I close web browser