Feature: My Feature



Scenario:Joins
Given I connect to MySQL database "example" at "localhost" port 3306 logged in as "root" with password "mysql@123"


Then I execute SQL "Select employee.Empid,employee.Employeename,money.TotalMoney,money.Paymentmethod from example.employee inner join example.money on money.Empid = employee.Empid"
If I verify 0 rows in result set
 Then I fail step with error message "No datafound"
 else I assign row 0 column "Paymentmethod" to variable "Payment_method"
 Then I echo $Payment_method
 EndIf