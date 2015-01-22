Feature: Greeter
  In order to properly address senior animals
  As a old cat
  I want to be greeted as 'Mr Cat'
  
  Scenario: Cat
    Given a animal
    When older than 3
    And I verify it is a "cat"
    Then I should see "Mr Cat"

