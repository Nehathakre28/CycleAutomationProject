Feature: My Feature

Scenario: chrome Image
Given I open "chrome" web browser
And I navigate to "https://www.toolsqa.com/cucumber/behavior-driven-development/" in web browser
Then I see image "Image:Images\Image.PNG" in web browser
Then I save screenshot
Then I close browser

