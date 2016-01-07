#Create your feature here
Feature: Animal
	When I give an animal a name, type, and age
	I expect to see these same values when
	I check its name, type, and age

	Scenario: Attributes
		Given a "dog" named "Jerry" who is 12 years old
		Then I should see that it is a "dog"
		And I should see that its name is "Jerry"
		And I should see that it is 12 years old
		And this animal should be considered old
