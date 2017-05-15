Feature: Animal Tracker
  Program to keep track of animals.
  It should track the animal name, type, and age

  Scenario Outline: tracking animal attributes
    Given a <age> year old <type> named <name> 
    Then the name should be <name>
    And the type should be <type>
    And the age should be <age>

    Examples:
      | name | type   | age |
      | Doge | dog    | 2   |
      | Kat  | cat    | 4   |
      | Liz  | lizard | 3   |

  Scenario: Check if Doge is old
    Given a 2 year old dog named Doge
    Then it is young

  Scenario: Check if Kat is old
    Given a 4 year old cat named Kat
    Then it is old

  Scenario: Check if Liz is old
    Given a 3 year old lizard named Liz
    Then it is young