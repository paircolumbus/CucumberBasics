Feature: Animal
  In order to keep track of animals
  As a dog whose name is 'Doggy', age is 2, 
  I want to be greeted as 'Doggy'

  Scenario Outline: 
    Given an animal is a <type> with name <name> and is <age> years old
    Then I verify that its name is <name>
    And I verify that its type is <type>
    And I verify that its age is <age>
    And I verify that it is <old_or_young>

Examples:
    | type     | name   | age   | old_or_young    |
    | "dog"    | "Doggy"  | 2   | young |
    | "cat"    | "Kitty"  | 1   | young |
    | "sheep"  | "Sheepy" | 4   | old   |
