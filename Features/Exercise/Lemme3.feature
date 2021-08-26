Feature: My Feature

Background: 
Given I assign "chrome" to variable "browser"
Given I assign "http://www.google.com" to variable "dstWebsite"
Given I assign "Tryon Solutions" to variable "searchPhrase"

Scenario: Lemme3
Given I open $browser web browser
Then I navigate to $dstWebsite in web browser
IF I see element "xPath://img[@alt='Google']" in web browser
Then I echo "I am on google page"
else  I echo "I am not on google page"
EndIf
And I wait 2 seconds
Then I see element "xPath://input[@aria-label='Search']" in web browser 
And I wait 5 seconds
Then I type $searchPhrase in element "xPath://input[@aria-label='Search']" in web browser
And I wait 2 seconds
And I press keys ENTER in web browser
#Then I click element "xPath://span[contains(text(),'Tryon Solutions')]" in web browser 
And I wait 2 seconds
And I close web browser



