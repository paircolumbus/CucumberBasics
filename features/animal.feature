#Create your feature here
#The hotel manager wants the script to keep track of the name, type and age of every animal
#Test the Animal object and ensure that it has the right output for its reader methods name, 
#type, age, old?

Feature: Animal
  I want my animal variables to be accessible
  
  Scenario: Old Dog
    Given an Animal
    Then I check it is a "dog"
    And I verify it has an "age"
    And I see if it has a "name"
    And I see if it is old

  Scenario: Young Fish
    Given an Animal
    Then I check it is a "fish"
    And I verify it has an "age"
    And I see if it has a "name"
    And I see if it is old