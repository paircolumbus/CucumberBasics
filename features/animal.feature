Feature: Animal
  In order to keep track of animals
  As a Classy Hotel Manager
  animal information should be correct

  Scenario: Tanya
    Given info for a dog named Tanya
    When I enter Tanya's info
    Then I should see Tanya's info
