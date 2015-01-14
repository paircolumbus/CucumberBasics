Feature: Animal
  In order to properly describe animals
  As a hotel manager
  I want to know the name, type, age, and whether the animal is older

  Scenario: Cat 
    Given a 4 year old cat named Lucy
    Then I should receive Lucy when I ask for its name
    Then I should receive 4 when I ask for its age 
    Then I should receive cat when I ask for its type
    Then I should receive true when I ask if its older

