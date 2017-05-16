Feature: Animal
  Scenario: Animal is a rabbit
    Given an animal
    When the animal is a Rabbit
    And the animal is named "Daisy"
    And the animal is 5 years old
    Then the type should be "Rabbit"
    And the name should be "Daisy"
    And the age should be 5
