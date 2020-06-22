Feature: Room Service
  In order to properly nourish our animals
  As a cat
  I want to be fed fish
  
  Scenario: Cat
    Given an animal
    When I verify she is a "cat"
    Then I should give her salmon
