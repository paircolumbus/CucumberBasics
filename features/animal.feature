Feature: Clientele tracker
  As a hotel manager
  I want to track my animal clientele
  
  Scenario: Old animal
    Given a 4 year old "dog" named "Nicki" is registered
    Then it should have the correct name, type, and age
    And it should be listed as old

  Scenario: Young animal
    Given a 3 year old "cat" named "Ollie" is registered
    Then it should not be listed as old
