Feature: Animal
  In order to properly track my hotel's clientele
  As a hotel manager
  I want to be able to verify their names, types, ages, and whether they are old

  Scenario: Chinchilla
    Given a chinchilla named Spike who is 4 years old
    Then its type should be chinchilla
    And its name should be Spike
    And its age should be 4
    And it should be old
