Feature: My Feature

Background: 
Given I assign "chrome" to variable "browser"
Given I assign "http://www.google.com" to variable "dstWebsite"
Given I assign "Tryon Solutions" to variable "searchPhrase"
Scenario: Lemme2
Given I open $browser web browser
Then I navigate to $dstWebsite in web browser

#Then I verify text "Google" is equal to "Google" 
#Then I echo "I am on google page"
#And I wait 2 seconds

IF I see element "xPath://img[@alt='Google']" in web browser
Then I echo "I am on google page"
else  I echo "I am not on google page"
EndIf

Then I see element "xPath://input[@title='Search']" in web browser 
And I wait 5 seconds
Then I type $searchPhrase in element "xPath://input[@title='Search']" in web browser

And I wait 2 seconds
And I close web browser


