Feature:Web Group Testing Utilities




Scenario: Log into cycle user portal

	Then I "Log into the Cycle User Portal"
		Then I navigate to "https://my.cycleautomation.com/login" in web browser 
        And I wait $wait_med seconds
		Then I click element "xPath://input[@type='email']" in web browser
		Then I type $username in web browser
        And I wait $wait_short seconds
		Then I click element "xPath://input[@type='password']" in web browser
		Then I type $password in web browser
		Then I click element "id:loginButton" in web browser
		And I wait $wait_med seconds
        Once I see element "xPath://h1[text()='Licenses']" in web browser
       	Then I echo "I am on Cycle Automation Page"
		Then I close web browser

