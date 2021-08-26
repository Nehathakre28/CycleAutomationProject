Feature: Stepping Through Cycle Utilities

@public
Scenario: Calulating Number of Stairs
#############################################################
# Description: This scenario multiplies the number of stairs
#  by the number of floors and returns the results
# Inputs:
# 	Required:
# 		floors - The number of floors a building has. To be multiplied by steps
# 		steps - The number of stairs in a floor. To be multiplied by floors
# Outputs:
# 	floors - the number of stairs in a given building
#############################################################
Given I assign "2" to variable "floors"
And I convert string variable "floors" to INTEGER variable "floors"
When I multiply variable "floors" by 12
    Then I echo "My home has " $floors "stairs!"