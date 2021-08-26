Feature: assignment 
@A1
Scenario: Dropdown
Given I open "Chrome" web browser
Then I navigate to "https://www.ebay.com/" in web browser
And I wait 5 seconds
Then I Click element "xPath://div[@id='gh-cat-box']" in web browser
And I wait 5 seconds
Then I Click element "xPath://*[@id='gh-cat']" in web browser
#Then I Click element "xPath://select[@aria-label='Select a category for search']//option[@value='267']" in web browser------IMP
Then I select option "Books" from drop-down element "xPath://select[@aria-label='Select a category for search']" in web browser
Then I click element "xPath://input[@type='submit']"in web browser
And I wait 10 seconds
Then I close web browser

@A2
Scenario: How to search autocorrect
Given I open "Chrome" web browser
And I wait 5 seconds
Then I navigate to "https://www.google.com/" in web browser
And I wait 5 seconds
Then I type "How to find average" in element "xPath://input[@aria-label='Search']" in web browser
And I wait 2 seconds
Then I click element "xPath://span/b[contains(text(),'marks')]" in web browser
And I wait 2 seconds
Then I close web browser

@A3
Scenario: Scenario
Given I open "chrome" web browser
Then I navigate to "https://money.rediff.com/gainers/bse/daily/groupa?src=gain_lose" in web browser
And I wait 5 seconds
If  I see element "xPath://table/tbody/tr/td//a[contains(text(),'Birlasoft')]" in web browser 
Then I echo "Birlasoft"

#Then I copy value in row "4" column "Current Price (Rs)" in table "xPath://table[@class='dataTable']/../table" in web browser as variable "Var"
Then I assign variable "Value" by combining "xPath://table[@class='dataTable']/../table/tbody/tr" 
And I echo $Value


else I echo "No"
EndIf







