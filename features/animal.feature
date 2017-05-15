Feature: Animal
  In order to be greeted appropriately
  I want to track an animal's name
  I want to track an animal's age
  I want to track an animal's type
  I want to know if an animal is old

  Scenario: age
    Given a animal
    Then it has a "age"

  Scenario: type
    Given a animal
    Then it has a "type"

  Scenario: name
    Given a animal
    Then it has a "name"

  Scenario: old
    Given a animal
    When age is more than 3
    Then it should say it is old
