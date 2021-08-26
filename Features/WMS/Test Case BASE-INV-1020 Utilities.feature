Feature: Test Case BASE-INV-1020 Utilities


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

###########################################################
#Description:Search for the Location on the Inventory Screen
#Browser:Chrome
#login Portal:http://10.3.10.133:8060/rp/login
#Input:
#     
#Output:
#    Successfully Check the location is either Empty or Partially Full 
############################################################

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
#    Successfully Remove Inventory
############################################################

Scenario: Select the 'Actions' drop-down and select 'Remove Inventory'
Given I "Remove Inventory"
Then I click element "xPath://span[@id='rpCountButton-1631-btnIconEl']" in web browser
And I wait 2 seconds


Then I click element "xPath://div[@class='x-grid-row-checker']" in web browser
And I wait 2 seconds
Then I click element "xPath://span[@id='wmMultiViewActionButton-1604-btnIconEl']" in web browser
And I click element "xPath://span[text()='Remove Inventory']"  in web browser
And I wait 2 seconds
Then I see element "xPath: //label[text()='Adjustment Reason']" in web browser
And I wait 3 seconds
Then I click element "xPath:(//div[@class='x-trigger-index-0 x-form-trigger x-form-arrow-trigger x-form-trigger-first rp-icon-expanded'])[6]" in web browser

And I wait 3 seconds
And I click element "xPath://li[text()='Acceptable Adjustment']" in web browser

And I wait 5 seconds
And I click element "xPath://div/a[@class='x-btn x-unselectable rp-important-btn rp-btn-shadow x-btn-toolbar x-box-item x-toolbar-item x-btn-default-toolbar-small x-noicon x-btn-noicon x-btn-default-toolbar-small-noicon']" in web browser
And I wait 5 seconds

If I see element "xPath://span[@id='wm-inventorydisplay-inventorydisplay_header_hd-textEl']" in web browser
Then I echo "Remove Inventory"
else I echo "Not Remove Inventory"
EndIf
And I wait 5 seconds















