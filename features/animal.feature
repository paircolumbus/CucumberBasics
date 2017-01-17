Feature: Room Service
  In order to properly nourish our animals
  As a cat
  I want to be fed fish
  
  Scenario: Cat
    Given a animal
    When I verify it is a "cat"
    Then I should give it fish
