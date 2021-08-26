Feature: WMS LOGIN



###########################################################
#Description:login WMS
#Browser:Chrome
#login Portal:http://10.3.10.133:8060/rp/login
#Input:
#      Username:Required user name
#      Password:Required password
#Output:
#      Login Successfully if username and password valid
############################################################
Scenario: Sign into WMS
Given I "Login to WMS"
Given I assign "chrome" to variable "browser"
And I assign "http://10.3.10.133:8060/rp/login" to variable "login"
Given I assign "NEHA.THAKRE" to variable "username"
Given I assign "Nthakre@123" to variable "password"
Given I open $browser web browser
Then I navigate to $login in web browser
And I wait 5 seconds
If I see element "xPath://div[@class='logo']" in web browser
And I wait 5 seconds
Then I type  $username in element "xPath:(//input[@name='loginName'])[1]" in web browser
Then I type $password in element "xPath:(//input[@name='password'])[1]" in web browser
Then I click element "xPath://input[@id='loginButton']" in web browser
And I wait 35 seconds
Then I echo "Login Successfully"
else I echo "Login Failed"
EndIf
And I wait 5 seconds