Feature: Animal
  In order to properly make animals
  As a old cat
  I should be named Lucy
  
  Scenario: Lucy
    Given I am an animal
    When I am older than 3
    And I check that I am a "cat"
    Then my name should be "Lucy"

