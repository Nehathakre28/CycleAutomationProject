Feature: Using CSV file




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
@login
Scenario Outline: Sign into WMS
CSV Examples: Test Case Inputs\Loginsample.csv
Given I "Login to WMS"
Given I assign "chrome" to variable "browser"
Given I open $browser web browser
And I assign "http://10.3.10.133:8060/rp/login" to variable "login"
Then I navigate to $login in web browser
And I wait 5 seconds
If I see element "xPath://div[@class='logo']" in web browser
And I wait 5 seconds
Then I type  <username> in element "xPath:(//input[@name='loginName'])[1]" in web browser
Then I type <password> in element "xPath:(//input[@name='password'])[1]" in web browser
Then I click element "xPath://input[@id='loginButton']" in web browser
And I wait 35 seconds
Then I echo "Login Successfully"
else I echo "Login Failed"
EndIf
And I wait 5 seconds

Given I click element "xPath://input[@placeholder='Search']" in web browser
And I wait 5 seconds
Then I assign "Inventory" to variable "Inventory_var"
Then I type $Inventory_var in element "xPath://input[@id='jdaSearchField-1011-inputEl']" in web browser
And I press keys ENTER in web browser
And I wait 10 seconds
###########################################################
#Description:Navigate to the Inventory screen
#Browser:Chrome
#login Portal:http://10.3.10.133:8060/rp/login
#Input:
#      Inventory -> Inventory
#Output:
#       Successfully Open Inventory screen
############################################################
Then I scroll to element "xPath://td[text()='Inventory -> Inventory']" in web browser
And I wait 2 seconds
Then I click element "xPath://td[text()='Inventory -> Inventory']" in web browser
And I wait 25 seconds

###########################################################
#Description:Search for the Location on the Inventory Screen
#Browser:Chrome
#login Portal:http://10.3.10.133:8060/rp/login
#Input:
#     CYCPALLOC7
#Output:
#       Successfully Search the Location Inventory screen
############################################################

Given I see element "xPath://input[@id='rpFilterComboBox-1043-inputEl']" in web browser
And I wait 5 seconds
Then I type <location> in element "xPath://input[@id='rpFilterComboBox-1043-inputEl']" in web browser
And I scroll to element "xPath://span[text()=' in Location']" in web browser
And I wait 2 seconds
Then I click element "xPath://span[text()=' in Location']" in web browser
And I wait 5 seconds

###########################################################
#Description:Check that the Location and Click on the Actions drop-down
#Browser:Chrome
#login Portal:http://10.3.10.133:8060/rp/login
#Input:
#     CYCPALLOC7
#    Add Inventory
#Output:
#   Successfully Check the Location and Click on the Actions drop-down
############################################################

Given I " Check that the Location"
Then I click element "xPath://div[@class='x-grid-row-checker']" in web browser
And I wait 2 seconds
Then I click element "xPath://span[@id='wmMultiViewActionButton-1604-btnIconEl']" in web browser
And I click element "xPath://span[text()='Add Inventory']" in web browser
And I wait 5 seconds
If I see element "xPath://span[text()='Add Inventory']" in web browser
Then I echo "I am on Add inventory Page"
else I echo "I am not on Add inventory Page"
EndIf
###########################################################
#Description:Enter the Required Fields
#Browser:Chrome
#login Portal:http://10.3.10.133:8060/rp/login
#Input:
#     Filled all required fields
#Output:
# Successfully Enter the Required Fields And Click on next button
############################################################

Given I type <LPN> in element "xPath://input[@id='textfield-2222-inputEl']" in web browser
And I wait 5 seconds
Then I see element "xPath://input[@id='itemLookup-2224-inputEl']" in web browser
And I wait 2 seconds
Then I type <item> in element "xPath://input[@id='itemLookup-2224-inputEl']" in web browser
And I wait 3 seconds
And I click element "xPath://div[text()='SHAMPOO-03 - CLIENT A']" in web browser
 Then I type <quantity> in element "xPath://input[@name='quantity']" in web browser
And I wait 5 seconds

Then I see element "xPath: //label[text()='Reason Code']" in web browser
And I wait 3 seconds
Then I click element "xPath:(//div[@class='x-trigger-index-0 x-form-trigger x-form-arrow-trigger x-form-trigger-first rp-icon-expanded'])[17]" in web browser

And I wait 3 seconds
And I click element "xPath://li[text()='Acceptable Adjustment']" in web browser
Then I type <adjustmentReference1> in element "xPath://input[@name='adjustmentReference1']" in web browser
Then I type <adjustmentReference2> in element "xPath://input[@name='adjustmentReference2']" in web browser
And I wait 3 seconds
Then I click element "xPath://span[@id='button-2217-btnIconEl']" in web browser
And I wait 5 seconds

###########################################################
#Description:Confirm Return to the Location Screen
#Browser:Chrome
#login Portal:http://10.3.10.133:8060/rp/login
#Input:
#     Click on next button
#Output:
# Adjustment Successful
# Successfully Return to the Location Screen
############################################################

Given I "Adjustment Successful"
If I see element "xPath://span[@id='wm-inventorydisplay-inventorydisplay_header_hd-textEl']" in web browser
Then I echo "Adjustment Successful"
else I echo "Adjustment Not Successful"
EndIf
And I wait 5 seconds

###########################################################
#Description:logout WMS
#Browser:Chrome
#login Portal:http://10.3.10.133:8060/rp/login
#Input:
#      Username:Required user name
#               Logout button
#Output:
#     Logout Successfully 
############################################################

Given I "Logout"
If I see element "xPath://span[text()='NEHA.THAKRE']" in web browser
Then I click element "xPath://span[@id='ext-comp-1012-btnIconEl']" in web browser
And I wait 2 seconds
Then I click element "xPath://span[text()='Logout']" in web browser
And I echo "Logout Successful"
else I echo "Logout Failed"
EndIf
And I wait 5 seconds
Then I close web browser

