Feature: Terminals
@tag1
Scenario: Local terminal with path
Given I open local terminal
Then I enter "C:" in terminal
And I wait 5 seconds
And I enter " C:\Windows\notepad.exe" in terminal
And I enter "notepad" in terminal
And I wait 10 seconds
And I close terminal

@tag2
Scenario:Local terminal by search
#Given I open local terminal
When I press keys "CTRL+ESC"
Then I enter "notepad"
Then I wait 2 seconds
Then I press keys "Enter"
Then I wait 2 seconds


@Newtab
Scenario: How to open newtab
Given I open "Chrome" web browser
And I navigate to "https://www.w3schools.com/" in web browser
Then I wait 5 seconds
And I see title "W3Schools Online Web Tutorials" in web browser
Given I copy current URL in web browser to variable "Currenturl"
And I echo $Currenturl
Then I wait 5 seconds
And I press keys CTRL+T
And I switch to tab "2" in web browser
And I navigate to "https://www.tryonsolutions.com/" in web browser
And I close web browser