Feature: Get Name
  In order to greet the animal by it's name
  As a greeter
  I want to get the animals name

  Scenario: getting an animals name
    Given an animal has the name "Spike"
    When I ask for the name
    Then the result should be "Spike"

  Scenario: Getting an animals type
    Given an animal has the type 'cat'
    When I ask for the type
    Then the result should be "cat"

  Scenario Outline: Checking an animals age
    Given an animal is <age> years old
    When we ask if it's old
    Then it should tell us that it's <old>
    Examples:
      | age |   old |
      |   1 | false |
      |   3 | false |
      |   4 |  true |