Feature: Fast then light
Scenario: 1.1
	Given open selenium web driver
	When create 5 resources
	And create 5 projects
	And edit 5 project put 5 resources to project  	
	Then quit
