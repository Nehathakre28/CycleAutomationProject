Feature: Log in Environment Feature


Scenario: I log into the Cycle User Portal
Given I assign values in row 1 from "Features\Demotestcycle\Demo2\Demo2\Logins.csv" to variables
Then I navigate to $Website in web browser within 60 seconds
When I press keys Tab in web browser 2 times with .5 seconds delay
And I type $Username in web browser
And I press keys Tab in web browser
And I type $Password in web browser
And I click element "id:loginButton" in web browser
And I wait $short_time seconds
Then I see title "Licenses" in web browser


Scenario: I log into blueyonder warehouse
Given I assign values in row 2 from "Features\Demotestcycle\Demo2\Demo2\Logins.csv" to variables
When I navigate to $Website in web browser  
And I wait $min_time seconds
Then I type  $Username in element "xPath:(//input[@name='loginName'])[1]" in web browser
Then I type $Password in element "xPath:(//input[@name='password'])[1]" in web browser
Then I click element "xPath://input[@id='loginButton']" in web browser
And I wait $max_time seconds
Then I see element "xPath://label[text()='Hello NEHA']" in web browser
And I wait $short_time seconds
Then I close web browser
