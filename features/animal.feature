Feature: Animal
	In order for the hotel to track its animal guests
	As a hotel manager 
	I want to see an animal's age, type, name, and whether it's old

Scenario: Reading an animal's information
	Given a 6 year old dog named Jake
	Then I should see Jake's age, type, name 
	And it is true he is old
	