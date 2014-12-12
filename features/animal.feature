Feature: Animal
  Classy Hotel wants to keep track of the name, type and age of every animal

  Scenario: Animal attributes
    Given an animal "Oscar", "cat", "4"
    Then name should be "Oscar"
    And type should be "cat"
