Feature: My Feature
Background: 
Given I assign "Chrome" to variable "browser"
Given I assign "https://www.tryonsolutions.com" to variable "destinationWebsite"

Scenario: Scenario1
When I open $browser web browser
And I wait 2 seconds
Then I navigate to $destinationWebsite in web browser 
And I wait 2 seconds
Then I close web browser

