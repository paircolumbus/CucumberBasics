Feature: Animal
  In order to properly address all animals
  As an animal
  I want to provide my name, type and age
  As an animal older than 3 years
  I want to say I'm old


  Scenario: Animal
    Given an animal
    When I ask about its "name"
    Then I should get its "name"
    When I ask about its "type"
    Then I should get its "type"
    When I ask about its "age"
    Then I should get its "age"

  Scenario: Old Animal
    Given an animal "older than" 3 years
    When I ask if it is old
    Then I should get "yes"

  Scenario: Young Animal
    Given an animal "younger than" 3 years
    When I ask if it is old
    Then I should get "no"
    Given an animal "exactly" 3 years
    When I ask if it is old
    Then I should get "no"
