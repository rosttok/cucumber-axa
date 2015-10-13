Feature: Fast then light
Scenario: 1.1
	Given open selenium web driver
	When create 5 resources
	And create 5 projects
	And edit 1 project put 1 resources to project  	
	Then quit