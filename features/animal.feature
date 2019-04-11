Feature: Animal
  In order to identify each animal
  As a hotel owner
  I want to know its name, type, age, and if it is old.

  Scenario: details
    Given an animal
    When its name is "Ein"
    And its type is "dog"
    And its age is 5
    Then it should be "old"
