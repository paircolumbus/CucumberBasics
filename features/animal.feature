Feature: Animal
  As an animal
  I want my name, type, age, and oldness to be known
  In order to be treated properly

  Scenario: Animal named Gorbypuff
    Given a cat
    When I have a name
    Then I should be called "Gorbypuff"

  Scenario: Animal of type Roosevelt Elk
    Given an elk
    When I have a type
    Then I should be recognized as a Roosevelt Elk

  Scenario: Animal of age 7
    Given a dog
    When I have an age
    Then I should be of age 7

  Scenario: Elderly animal
    Given a chincilla
    When I am older than 3
    Then I should be an old animal
