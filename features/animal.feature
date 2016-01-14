
Feature: Animal
  In order to properly allocate rooms
  As a young cat
  I want a 'Room for young cats'
  
  Scenario: Cat
    Given a animal
    When younger than 3
    And I am a "cat"
    Then I want the room for "Mr Cat"