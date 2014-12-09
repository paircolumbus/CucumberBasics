Feature: Print Names
  In order to properly address animals
  As a website visitor
  I want to print Mr Cat the animal is a cat
  I want to print Ms Dog the animal is a dog
  
  Scenario: Cat
    Given a animal
    When I verify it is a 'cat'
    Then I should see 'Mr Cat'

  Scenario: Dog
    Given a animal
    When I verify it is a 'dog'
    Then I should see 'Mr Dog'
