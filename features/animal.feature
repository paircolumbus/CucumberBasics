Feature: Animal
  In order to properly track animals
  Every animal should have name, type, and age

  Scenario:
    Given a 5-year old 'cat' named 'Babushka the Talking Cat'
    Then it should be tracked as a 'cat'
    And it should be named 'Babushka the Talking Cat'
    And its age should be 5
    And it should count as old
