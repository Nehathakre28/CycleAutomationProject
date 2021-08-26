Feature: Lemme Google That

Background:
Given I assign "chrome" to variable "browser"
Given I assign "http://www.google.com" to variable "dstWebsite"


Scenario: Lemme1
Given I open $browser web browser
Then I navigate to $dstWebsite in web browser
Then I type "Tryon Solutions" in element "xPath://input[@title='Search']" in web browser
And I wait 2 seconds
Then I click element "xPath://span[contains(text(),'Tryon Solutions')]" in web browser
Then I click element "xPath://h3[text()='Tryon Solutions']" in web browser
And I wait 5 seconds
Then I close web browser