Feature: Exercise features


Background: 
Given I assign "Chrome" to variable "browser"

Scenario: Browser Verification
Given I open $browser web browser
And I wait 2 seconds
Then I navigate to "https://my.cycleautomation.com/user-manual/web_testing/a-web-testing-setup" in web browser
And I wait 2 seconds
Then I close web browser