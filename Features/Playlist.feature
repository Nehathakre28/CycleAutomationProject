Feature: My Feature

Scenario: Jmeter
Given I open local terminal
Then I enter "C:" in terminal
AND I wait 3 seconds
AND I enter "cd C:\apache-jmeter-5.4.1\bin" in terminal
AND I enter "Jmeter.bat" in terminal
Then I wait 20 seconds