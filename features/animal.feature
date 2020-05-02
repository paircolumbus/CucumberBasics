Feature: Animal
	In order to distinguish animals
	I want to know a name, type and an age
	And be able to differentiate between old and young

	Scenario: Cat
		Given a "Cat" named "Admiral" that's "4" years old
		When asking "Admiral" it's name
		And asking the "Cat" it's type
		And asking the age "4" animal it's age
		Then I should see it is "old"

	Scenario: Dog
		Given a "Dog" named "Geoff" that's "2" years old
		When asking "Geoff" it's name
		And asking the "Dog" it's type
		And asking the age "2" animal it's age
		Then I should see it is "young"