Feature: RTCIS Inventory Adjustment

Background: 
Given I assign "5" to variable "wait_short"
Given I assign "10" to variable "max_response"
Given I assign "grep 88" to variable "terminal_ID"
Given I assign "CI2201" to variable "TECH_ID"
Given I assign "abc@123" to variable "password"
Given I assign "FITEM001" to variable "item_code"
Given I assign "60" to variable "quantity"
Given I assign "blue_yonder" to variable "deposit_location"
Given I assign "CVXCX1" to variable "ULID"
Given I assign "50" to variable "new_quantity"



Scenario Outline: Inputs
CSV Examples:Test\Features\RTCIS tickets\Inputs.csv
Given I assign <Equipment_type> to variable "Equipment_type"
Given I assign <subsite> to variable "subsite"
Given I assign <ACCT> to variable "ACCT"
Given I assign <control_group> to variable "control_group"


Scenario: Inventory Adjustment
#Login to Terminal
Given I "open and log into the terminal"
	And I "am in the expected home directory"
	And I "log in as an RDT device"
    And I execute scenario "Inputs"
    
    Then I enter "cd <directory location>" in terminal
    And I wait $max_response seconds
    
#Login to the RFT with the valid Terminal ID
  Then I type $terminal_ID in terminal
  Then I enter "vtrfemu 88" in terminal
   And I wait $max_respons seconds
  
#Enter Tech ID, Password, and Equipment Type
  Once I see "Screen 00.02" in terminal
  Then I press keys ENTER in terminal
  Then I type $TECH_ID in terminal
  And I wait $wait_short seconds
  Then I press keys TAB in terminal
  Then I type $password in terminal
  And I wait $wait_short seconds
 Then I type $Equipment_type in terminal
    Then I press keys ENTER in terminal
      And I wait $max_respons seconds
    
#Enter the subsite  
 Given I type $subsite in terminal
    Then I press keys ENTER in terminal
      And I wait $max_respons seconds
      
      
#Open the UNIT LOAD TRANSFER screen and enter a unit load ID
When I "navigate to the UNIT LOAD TRANSFER screen"
	Given I "am on the main menu"
	When I press keys F3 in terminal
    	And I verify screen is done loading in terminal within $max_response seconds
	Then I see "UNIT LOAD TRANSFER" in terminal within $wait_short seconds
    
    Then I "create a new unit load ID and enter it into the terminal"
	Given I generate random number between 1000 and 9999 as variable "unit_load_id"
    When I assign variable "unit_load_id" by combining "CYC" $unit_load_id
     Then I press keys ENTER in terminal
      And I wait $max_respons seconds
      
      
#Enter the Acct, Item, Control Group, and Quantity

And I "enter the acct, item, control group, and quantity on the Manual Identification screen"
	Given I "see the MANUAL IDENTIFICATION screen"
	When I "skip the Scan: field and enter the acct type"
    	Then I press keys ENTER in terminal
		And I type $ACCT in terminal
	Then I "enter the item code"
    	If I "am not automatically moved to the item code field"
    		Then I press keys TAB in terminal
        EndIf
		And I type $item_code in terminal
	
	And I "type the control group and quantity"
    	Given I "enter the control group"
            If I "am not automatically moved to the control group field"
        		Then I press keys TAB in terminal
        	EndIf
            Then I type $control_group in terminal
		
        Then I "enter the quantity"
			If I "am not automatically moved to the control group field"
        		Then I press keys TAB in terminal
        	EndIf
    		Then I type $quantity in terminal
	
    And I "press ENTER to send the information to the system"
		And I press keys ENTER in terminal

     
# Deposit the unit load
And I "specify the unit load to deposit"
	Given I "see the UNIT LOAD TRANSFER screen in terminal"
	When I "enter the unit load ID"
    	Given I type $unit_load_id in terminal
        When I press keys ENTER in terminal
        	And I verify screen is done loading in terminal within $max_response seconds
        Then I see $unit_load_id on line 2 in terminal
	
    Then I "press F10 to begin depositing the load"
    Given I press keys F10 in terminal
    
And I "deposit the load"
	Given I "am at the 'ENTER PUTAWAY LOCATION' screen"	
	When I "copy and paste the suggested location in the terminal"
	Then I type $deposit_location in terminal
	And I press keys ENTER in terminal
       
       
#Navigate to the EDIT UL screen

  And I "edit the quantity of the unit load ID we just created and deposited"
	Given I "navigate to the 'EDIT UL' screen"
		 Given I press keys F1 in terminal
     And I wait 10 seconds
		When I "enter choice 15 for ‘EDIT UL’"
			Given I type "15" in terminal
			Then I press keys ENTER in terminal

#Change the quantity of the Unit Load we deposited
  And I "Change the quantity of the Unit Load we deposited"
  Once I see "EDIT UNIT LOAD" in terminal
  Then I type $ULID in terminal
  And I press keys ENTER in terminal
  
Once I verify text $ULID is equal to "ULID"
  And I press keys TAB in terminal
  Given I "tab to the quantity field"
		When I type $new_quantity in terminal
		Then I press keys ENTER in terminal
  
 Once I see "Accept Changes?" in terminal
  And I "type Y to accept changes"
			Given I type "Y" in terminal
			Then I press keys ENTER in terminal
            
 #Navigate back to home menu         
  
	Given I "Navigate back to home menu"
		 Given I press keys F1 in terminal
     And I wait $wait_short seconds
		When I "enter choice 1 for ‘LOG OFF’"
			Given I type "1" in terminal
			Then I press keys ENTER in terminal