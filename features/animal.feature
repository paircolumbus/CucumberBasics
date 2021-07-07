Feature: Animal
  As a hotel attendant
  I need to have information about animals

  Scenario Outline: Animals
    Given a <type> that is <age>, named "<name>"
    Then the animal is <old>
    And the animal should have a name, age, and type

    Examples:
      | name   | type    | age | old     |
      | King   | dog     | 5   | old     |
      | Prince | hamster | 2   | not old |
      | Vinnie | rabbit  | 3   | not old |
      | Fluffy | cat     | 4   | old     |

