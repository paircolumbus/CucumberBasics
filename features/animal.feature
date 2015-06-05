Feature: Animal
  To ensure the client can track their animals
  By name, age, type, and if they are older than a certain age

  Scenario Outline: check attributes of different animals
    Given a <type> named <name> who is <age> years old
    Then the name should be <name>
    And the age should be <age>
    And the type should be <type>

  Examples:
    | name | age | type |
    | Lucy |   4 |  dog |
    | Carl |   2 |  cat |
    |  Bob |   1 | deer |

  Scenario: check if an animal is old
    Given a dog named Lucy who is 4 years old
    Then the animal is old
    Given a cat named Carl who is 2 years old
    Then the animal is young
