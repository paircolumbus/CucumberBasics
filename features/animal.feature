Feature: Animal
  As a hotel worker
  Given a client who is an animal
  I want to track the animal and see if it is old

  Scenario: Young Cat
    Given a 2 year old cat named Garfield
    Then it is not old
    And I should see its name, type, and age

  Scenario: Old Dog
    Given a 5 year old dog named Gromit
    Then it is old
    And I should see its name, type, and age
