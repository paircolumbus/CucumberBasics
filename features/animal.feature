Feature: Animal

  Scenario: Dog
    Given a young dog
    When the animal is a dog
    Then type should equal dog

  Scenario: Lucy
    Given an old cat
    When the name is Lucy
    Then name should equal Lucy

  Scenario: Old Animal
    Given an old cat
    When the animal is 4 years old
    Then old? should be true

  Scenario: Young Animal
    Given a young dog
    When the animal is 2 years old
    Then old? should be false
