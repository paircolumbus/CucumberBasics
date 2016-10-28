Feature: Animal
  In order to identify each animal,
  I want to know the name, type, age, and old.

Scenario: name
  Given an animal
  Then it has a "name"

Scenario: type
  Given an animal
  Then it has a "type"

Scenario: age
  Given an animal
  Then it has an "age"

Scenario: old
  Given an animal
  When age is more than 3
  Then it should be old
