Feature: Test Case: BASE-INV-1010 Add Feature


Background: 

Given I import scenarios from "D:\CycleProject\Test\Features\WMS\WMSLogin Utilities.feature"
And I execute scenario "Sign into WMS"
Given I import scenarios from "D:\CycleProject\Test\Features\WMS\SearchInventoryWMS.feature"
And I execute scenario "Search for Inventory Web screen"
Given I import scenarios from "D:\CycleProject\Test\Features\WMS\Test Case BASE-INV-1010 Utilities.feature"


Scenario:BASE-INV-1010 
Given  I execute scenario "Search for the Location on the Inventory Screen"
And I wait 2 seconds
   Then  I execute scenario "Check that the Location and Click on the Actions drop-down"
And I wait 2 seconds 
   Then  I execute scenario "Enter the Required Fields"
And I wait 2 seconds 
   Then  I execute scenario "Confirm Return to the Location Screen"
And I wait 2 seconds 
   Then  I execute scenario "Logout WMS"