Feature: Photo Box Utilities Feature



@pic
Scenario:photo upload
Given I open "chrome" web browser
And I navigate to "https://upload.photobox.com/en/" in web browser
When I click element "id:computer_icone_name" in web browser within 5 seconds

When I click element "id:button_desktop" in web browser within 5 seconds
And I wait 5 seconds
Then I enter "C:\Users\dP-PL\Pictures\Saved Pictures\Pic2.jpg"
And I press keys Enter
And I wait 5 seconds
Then I click element "xPath://span[text()='Start Upload']" in web browser
And I wait 5 seconds
Once I see "Your upload completed successfully!" in web browser
Then I click element "xPath://div/button[2]/span[text()='View my photos'] " in web browser

@Multiplepics
Scenario: multiple photo upload 
Given I open "chrome" web browser
And I navigate to "https://upload.photobox.com/en/" in web browser
When I click element "id:computer_icone_name" in web browser within 5 seconds

When I click element "id:button_desktop" in web browser within 5 seconds
And I wait 5 seconds
Then I enter "C:\Users\dP-PL\Pictures\Saved Pictures\Pic2.jpg"
And I wait 5 seconds
And I press keys Enter
And I wait 5 seconds
When I click element "id:button_desktop" in web browser within 5 seconds
Then I enter  "C:\Users\dP-PL\Pictures\Saved Pictures\Pic4.jpg"
And I press keys Enter
And I wait 5 seconds
Then I click element "xPath://span[text()='Start Upload']" in web browser
And I wait 5 seconds
Then I see "Your upload completed successfully!" in web browser
Then I click element "xPath://div/button[2]/span[text()='View my photos'] " in web browser

@validatepic
Scenario: Validation for photo upload 
Given I open "chrome" web browser
And I navigate to "https://upload.photobox.com/en/" in web browser
When I click element "id:computer_icone_name" in web browser within 5 seconds

When I click element "id:button_desktop" in web browser within 5 seconds
And I wait 5 seconds
And I assign "C:\Users\dP-PL\Pictures\Saved Pictures\img4.png" to variable "Var1"
Then I enter $Var1
And I press keys Enter
And I wait 5 seconds
Then I click element "xPath://span[text()='Start Upload']" in web browser
And I wait 5 seconds
Then I see "These PNG photos are less than 40KB which means they will be too small for our printers to use them." in web browser
Then I click element "xPath:(//a/span[text()='close'])[7] " in web browser


@usingcsv
Scenario Outline: Using csv

CSV Examples: D:\CycleProject\Test\WebsiteFeature\Inputs\ImagePath.csv
Given I open "chrome" web browser
And I navigate to "https://upload.photobox.com/en/" in web browser
When I click element "id:computer_icone_name" in web browser within 5 seconds

When I click element "id:button_desktop" in web browser within 5 seconds
And I wait 5 seconds
Then I assign all chevron variables to dollar variables
Then I enter $ImagePath
And I wait 5 seconds
And I press keys Enter
And I wait 5 seconds
Then I click element "xPath://span[text()='Start Upload']" in web browser
And I wait 5 seconds
Then I see "These PNG photos are less than 40KB which means they will be too small for our printers to use them." in web browser
Then I click element "xPath:(//a/span[text()='close'])[7] " in web browser
