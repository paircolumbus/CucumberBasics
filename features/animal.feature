Feature: Animal
  In order to properly track animals
  Every animal 
  Should have name, type, and age

  Scenario:
    Given a 5-year old 'cat' named 'Babushka the Talking Cat'
    Then it should be tracked as a 'cat', named 'Babushka the Talking Cat', whose age is 5
