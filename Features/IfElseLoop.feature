Feature: IfElse loop
@EX1
Scenario: IF Else Loop
Given I echo "Create CSV file if not exists"
If I verify file "Datasets\Test.csv" exists
Then I echo "File already exists"
else I create file "Datasets\Test.csv"
And I echo "File create"
EndIf

@EX2
Scenario: Example
Given I open "Chrome" web browser
Then I navigate to "https://www.google.com/" in web browser
If I verify current URL is "https://www.google.com/" in web browser
Then I click element "xPath://div/a[text()='Gmail']" in web browser
else I wait 5 seconds
And I close web browser
EndIf

@Ex3
Scenario: Example1
Given I "Find Image"
If I verify file "Images\Capture.PNG" exists 
Then I echo "I see Image"
else I echo "I dont see Image"
EndIf


@EX4
Scenario: Example2
Given I open "Chrome" web browser
Then I navigate to "https://www.ebay.com/" in web browser
If I see element "xPath://input[@type='text']" in web browser 
Then I type "Samsung A50" in element "xPath://input[@type='text']" in web browser 
Then I click element "xPath://input[@type='submit']"in web browser
else I wait 5 seconds
Then I close web browser
EndIf





