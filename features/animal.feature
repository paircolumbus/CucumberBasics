Feature: Animal
	In order to track animals in the hotel
	As a manager
	I want to be able to recall their information

	Scenario: Puppy named Rex
		Given a animal that is a 1 year old "dog" named "Rex"
		When it is a "dog"
		And it is 1 years old
		And it is named "Rex"
		Then I should see that it is young
