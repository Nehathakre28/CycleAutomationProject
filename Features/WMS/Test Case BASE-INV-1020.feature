Feature: Test Case: BASE-INV-1020 Delete feature

Background: 
Given I import scenarios from "D:\CycleProject\Test\Features\WMS\WMSLogin Utilities.feature"
And I execute scenario "Sign into WMS"
Given I import scenarios from "D:\CycleProject\Test\Features\WMS\SearchInventoryWMS.feature"
And I execute scenario "Search for Inventory Web screen"
Given I import scenarios from "D:\CycleProject\Test\Features\WMS\Test Case BASE-INV-1020 Utilities.feature"



Scenario:BASE-INV-1020
Given  I execute scenario "Search for the Location on the Inventory Screen"
And I wait 2 seconds
      Then I execute scenario "Check that the location is either Empty or Partially Full"
And I wait 2 seconds
    Then I execute scenario "Select the 'Actions' drop-down and select 'Remove Inventory'"
And I wait 2 seconds    