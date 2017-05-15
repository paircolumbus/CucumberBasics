Feature: Animal
	In order to keep track of animals at Classy Hotel
	As a hotel manager
	I need to know the name, age, type, and seniority of an animal

Scenario Outline: Check attributes of different animals
	Given a <type> named <name> who is <age> years old
	Then the name should be <name>
	And the age should be <age>
	And the type should be <type>

Examples:
	|   name   | age | type |
	| Snuggles |  10 |  dog |
	| Sniffles |  14 |  cat |
	|   Herb   |   2 |  rat |

Scenario: Check if an animal is old
	Given a dog named Snuggles who is 10 years old
	Then the animal is old
	Given a rat named Herb who is 2 years old
	Then the animal is young
