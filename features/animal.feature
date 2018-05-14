Feature: Animal
  As a cat, I should have a name, type, and age
  As a cat under 3 years old
  I am not old

  Scenario: Cat
    Given an animal
    Then it has a name 'Elsa'
    And it has an age of 2
    And it is not old
