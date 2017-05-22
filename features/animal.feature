Feature: Animal
  Animals should properly return their attributes.

  Scenario: Name
    Given an animal named Lucy
    Then the animal should be named Lucy

  Scenario: Type
    Given an animal that is a cat
    Then the animal should be a cat

  Scenario: Age
    Given an animal that is 3 years old
    Then the animal should be 3 years old

  Scenario: Old
    Given an animal that is 5 years old
    Then the animal should be old

  Scenario: Young
    Given an animal that is 2 years old
    Then the animal should be young
