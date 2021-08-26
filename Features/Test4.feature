Feature: Test4
@Writedata
Scenario: Write data in csv
Given I echo "write"
If I verify file "D:\CycleProject\Test\Datasets\Feature-2021.csv" exists 
Then I append "Good morning" to end of file "Datasets\Feature-2021.csv"
#Then I replace "Payal" with "Neha" in file "D:\CycleProject\Test\Datasets\Feature-2021.csv"
EndIf

@Replacevariables
Scenario: Replace variable
Given I echo "Replace Variable"
Then I assign "New ID: T222" to variable "Newstring"
Then I assign "N898" to variable "Oldstring"
Then I echo $Newstring
And I replace variables in string "${Oldstring}" and store as variable "Newstring"
Then I echo $Newstring


