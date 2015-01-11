Feature: Animal
  As a hotel worker
  Given a client who is an animal
  I want to track the animal and see if it is old

  Scenario Outline: Animal creation
    Given a <age> year old <type> named <name>
    Then it is <old>
    And I should see its name, type, and age

    Examples:
      | name     | type | age | old     |
      | Garfield | cat  | 2   | not old |
      | Gromit   | dog  | 5   | old     |
