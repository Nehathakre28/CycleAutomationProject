############################################################
# Copyright 2020, Tryon Solutions, Inc.
# All rights reserved.  Proprietary and confidential.
#
# This file is subject to the license terms found at 
# https://www.cycleautomation.com/end-user-license-agreement/
#
# The methods and techniques described herein are considered
# confidential and/or trade secrets. 
# No part of this file may be copied, modified, propagated,
# or distributed except as authorized by the license.
############################################################ 
# Utility: Environment.feature
#
# Functional Area: Environment Setup
# Author: Tryon Solutions
# Blue Yonder WMS Version: Consult Bundle Release Notes
# Test Case Type: Utility
# 
# 
# Description:
# Utilities for setting up cycle environment and moca environment variable
# needed to run tests. Includes logic to support Test specific overrides
# and environment specific overrides.
# 
# Public Scenarios:  
#
#
# Assumptions:
# 	None
#
# Notes:
# 	None
#
############################################################ 

Feature: Environment


@wip @public
Scenario: Setup Wait Times
###################################################################
# Description: Load wait time variables
# MSQL Files:
#	None
# Inputs:
#	Required:
#		File 'Environments/wait Times.csv'
#	Optional:
#		None
# Outputs:
# 	All wait time environment variables
#   To override a wait time, include it in the Environment.csv or Environment_Overrride.csv files
###################################################################

Given I "load a CSV file containing variable / value pairs for wait times and assigns each to a cycle variable"
	And I assign value "Environments/" to unassigned variable "environments_directory_location"
   And I assign variable "error_message" by combining "ERROR: Environment not specified in Test Input or Configuration "
	Given I assign variable "wait_times_file" by combining $environments_directory_location "wait Times.csv"
	If I verify file $wait_times_file exists
		While I assign values in next row from $wait_times_file to variables
			Then I assign value $value to unassigned variable $variable
		EndWhile
	Else I assign variable "error_message" by combining "ERROR: Failed - 404 - file " $wait_times_file " not found."
		Then I fail step with error message $error_message
	EndIf
