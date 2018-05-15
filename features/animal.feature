Feature: Animal
  Scenario: Old Cat
    Given a "cat" named "Bob" that is 5 years old
    Then it should be named "Bob"
    And it should be a "cat"
    And it should be 5 years old
    And it should be considered old

  Scenario: Yound Dog
    Given a "dog" named "Winny" that is 2 years old
    Then it should be named "Winny"
    And it should be a "dog"
    And it should be 2 years old
    And it should not be considered old
