Feature:Uses of keywords
@tag1
Scenario: Scenario1
Given I open "chrome" web browser
#Then I navigate to "https://www.cycleautomation.com" in web browser
Then I navigate to "https://www.cycleautomation.com" in web browser 
And I close web browser

@tag2
Scenario: Scenario2
Given I wait 2 seconds
Then I import scenarios from "Test2.feature"
And I execute scenario "Combine variable"

@tag3
Scenario: Scenario3
Given I open "Chrome" web browser
Then I maximize web browser
And I wait 5 seconds
And I close web browser

@tag4
Scenario: Scenario4
Given I wait 2 seconds
Then I execute scenario "Scenario1"