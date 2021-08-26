Feature: list
@list
Scenario: Scenario Name
Given I "Numberlist"
Then I create list "Numberlist"

Then I append element "2" to list "Numberlist"
Then I append element "3" to list "Numberlist"
Then I append element "4" to list "Numberlist"
Then I append element "5" to list "Numberlist"
Then I prepend element "1" to list "Numberlist"
And I echo $Numberlist
Then I reverse list "Numberlist"
And I echo $Numberlist
Then I sort list "Numberlist"
And I echo $Numberlist

Then I get length of list "Numberlist" and save as variable "Numberlist_count"
And I echo $Numberlist_count

@multiply
Scenario: Multiply of 2
Given I create list "tableOf2"
Given I assign 1 to variable "value"
Given I assign 10 to variable "x"
#Given I assign 2 to variable "num"

 
While I verify number $value is less than or equal to $x
    Then I append element "2" to list "tableOf2"
         Then I multiply variable "value" by 2 
    Then  I wait 5 seconds
EndWhile
       
And I increase variable "value" by 1


