Feature: My Feature


Scenario: Hello World
When I echo "Hello World"


Scenario: Fibonacci Series
Given I assign 1 to variable "first_Num"
And I assign 1 to variable "temp"
And I assign 1 to variable "second_Num"
And I assign 0 to variable "sum"
And I assign 1 to variable "x"
Given I create list "fibonacci"
While I verify number $x is less than or equal to 5
  And I append element $first_Num to list "fibonacci"
   And I execute Groovy "sum=sum+first_Num"
   
  And I execute Groovy "temp=first_Num+second_Num"
  And I assign $second_Num to variable "first_Num"
  And I assign $temp to variable "second_Num"
  Then i increase variable "x" by 1
EndWhile



