#Create your feature here

Feature: Animal
  In order to properly serve animals
  I want an animal's name, species, age, and whether or not they are old

  Scenario: New animal
    Given a animal that is a dog
    When he is 5
    Then he is old
