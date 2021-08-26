Feature: My Feature
Background: 
Given I assign "chrome" to variable "browser"
Given I assign "http://www.google.com" to variable "dstWebsite"
Given I assign "Tryon Solutions" to variable "searchPhrase"


Scenario: Lemme4
Given I open $browser web browser
And I navigate to $dstWebsite in web browser
Once I see element "xPath://input[@title='Search']" in web browser within 5 seconds
When I type $searchPhrase in element "xPath://input[@title='Search']" in web browser
And I wait 2 seconds
And I press keys ENTER in web browser
Then I click element "xPath://h3[text()='Tryon Solutions']" in web browser
And I wait 5 seconds
If I see element "xPath://img[@alt='Tryon Solutions']" in web browser
Then I echo "I am on Tryon solutions page"
Else I echo "I am not on Tryon solutions page"
EndIf
Then I close web browser


