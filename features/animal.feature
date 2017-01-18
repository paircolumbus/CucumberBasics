Feature: Animal

  Scenario: Animal is a cat
    Given an animal
    When the animal is a Cat
    And the anmial is named "Bob"
    And the animal is 2 years old
    Then the type should be "Cat"
    And the name should be "Bob"
    And the age should be 2
