Feature: Test Case BASE-INV-1040 Utilities


Scenario: Search for the Location on the Inventory Screen
###########################################################
#Description:Search for the Location on the Inventory Screen
#Browser:Chrome
#login Portal:http://10.3.10.133:8060/rp/login
#Input:
#     CYCPALLOC7
#Output:
#       Successfully Search the Location Inventory screen
############################################################
Scenario:Search for the Location on the Inventory Screen
Given I see element "xPath://input[@id='rpFilterComboBox-1043-inputEl']" in web browser
And I wait 5 seconds
Then I type "CYCPALLOC7" in element "xPath://input[@id='rpFilterComboBox-1043-inputEl']" in web browser
And I scroll to element "xPath://span[text()=' in Location']" in web browser
And I wait 2 seconds
Then I click element "xPath://span[text()=' in Location']" in web browser
And I wait 5 seconds

Scenario: Check that the location is either Empty or Partially Full 
Given I " Check that the Location"
Then I see element "xPath://div[@class='x-grid-row-checker']" in web browser
If I see element "xPath://div[text()='Partially Full']"  in web browser
Then I echo "Location is Partially Full"
Then I click element "xPath://div[@class='x-grid-row-checker']" in web browser
Elsif I see element "xPath://div[text()='Empty']"  in web browser
Then I echo "Location is Empty"
EndIf
###########################################################
#Description:Search for the Location on the Inventory Screen
#Browser:Chrome
#login Portal:http://10.3.10.133:8060/rp/login
#Input:
#     
#Output:
#       Successfully Increment Inventory
############################################################


Scenario: Select the 'Actions' drop-down and click 'Adjust Inventory'
Given I "Adjust Inventory"
Then I click element "xPath://span[@id='rpCountButton-1631-btnIconEl']" in web browser
And I wait 2 seconds
Then I click element "xPath://div[@class='x-grid-row-checker']" in web browser
Then I click element "xPath://span[@id='wmMultiViewActionButton-1604-btnIconEl']" in web browser
And I click element "xPath://span[text()='Adjust Inventory']"  in web browser
And I wait 10 seconds
Once I see element "xPath://input[@name='quantity']" in web browser
Then I clear all text in element "xPath://input[@name='quantity']" in web browser
And I wait 2 seconds
Then I type "10" in element "xPath://input[@name='quantity']" in web browser

Then I see element "xPath: //label[text()='Reason Code']" in web browser
And I wait 3 seconds
Then I click element "xPath:(//div[@class='x-trigger-index-0 x-form-trigger x-form-arrow-trigger x-form-trigger-first rp-icon-expanded'])[17]" in web browser
And I wait 3 seconds
And I click element "xPath://li[text()='Acceptable Adjustment']" in web browser
Then I type "REF1-100" in element "xPath://input[@name='adjustmentReference1']" in web browser
Then I type "REF2-100" in element "xPath://input[@name='adjustmentReference2']" in web browser
And I wait 2 seconds
Then I click element "xPath://div/a[@class='x-btn x-unselectable rp-important-btn rp-btn-shadow x-btn-toolbar x-box-item x-toolbar-item x-btn-default-toolbar-small x-noicon x-btn-noicon x-btn-default-toolbar-small-noicon']" in web browser
And I wait 3 seconds