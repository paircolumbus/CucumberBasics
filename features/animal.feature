Feature: Animal
  In order to properly test getters
  As a young elephant
  I want to not be old

  Scenario: Elephant
    Given a animal
    When 2
    When It's an "elephant"
    Then I should see it to be false that it is old
