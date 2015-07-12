Feature: Calculator
	In order to avoid silly mistakes
	As a math idiot
	I want to be told the sum of two numbers

@mytag @mytag1
Scenario: Add two positive numbers
	Given I have entered 50 into the calculator
	And I have entered 70 into the calculator
	When I press add
	Then the result should be 120 on the screen

	@mytag1
Scenario: Add two negative numbers
	Given I have entered -50 into the calculator
	And I have entered -70 into the calculator
	When I press add
	Then the result should be -130 on the screen

@mytag1
Scenario: Add a positive number to negative number
	Given I have entered 50 into the calculator
	And I have entered -70 into the calculator
	When I press add
	Then the result should be -30 on the screen

