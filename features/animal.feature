Feature: Room assignment
  As an employee
  I want to verify the type of animal
  So that they may be given proper accomodation

Scenario Outline: Assigning an animal a room
  Given that the animal is a <animal_type>
  Then the animal's room should be a <room_type>

Examples:
  | animal_type | room_type |
  |         dog |     house |
  |         cat |      sill |
  |        fish |      bowl |
  |      turtle |      pond |
  |     hamster |     wheel |
  |      iguana |      rock |
  |       zebra |       bed |