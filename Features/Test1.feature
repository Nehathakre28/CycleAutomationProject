Feature:Log into website
Background: 
Given I "Log into the Cycle User Portal"
When I open "Chrome" web browser
And I maximize web browser



Scenario: Log into cycle user portal
Given I navigate to "https://blueyonder.csod.com/" in web browser
And I press keys Tab in web browser 
And I type "nthakre@delaplex.com" in web browser
And I press keys Tab in web browser
And I type "Ndelaplex@123" in web browser
And I click element "id:LoginBtn" in web browser
Then I wait 10 seconds
And I close web browser