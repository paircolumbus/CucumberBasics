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

