Feature:Terminals2
@mouseover
Scenario: Mouse over
Given I open "Chrome" web browser
Then I navigate to "https://www.w3schools.com/" in web browser
Then I see title "W3Schools Online Web Tutorials" in web browser
Then I wait 4 seconds
And I hover mouse over element "id:navbtn_tutorials" in web browser
Then I wait 2 seconds
And I click element "id:navbtn_tutorials" in web browser
Then I wait 2 seconds

@Triplequote
Scenario:  Triple quote
Given I "MyTerminalsExamples"
And I assign """Cycle Automation""" to variable "Text"
#And I assign """"Cycle Automation"""" to variable "Text" 
Then I wait 5 seconds
And I echo $Text

@scroll
Scenario: Scroll
Given I open "Chrome" web browser
Then I navigate to "https://www.guru99.com/" in web browser
Then I wait 5 seconds
And I scroll to element "xPath:/html/body/footer/div/div[1]/div/div/div/div/div/div[2]/div[2]/div" in web browser
Then I wait 5 seconds
And I close web browser