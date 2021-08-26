Feature: My Feature

Scenario: Web Testing
Given I open "Chrome" web browser
And I maximize web browser
When I navigate to "https://www.google.com/" in web browser
And I type "CAT CYCLE" in element "xPath://*[@id='input']" in web browser within 10 seconds
Then I press keys ENTER
#And I close web browser