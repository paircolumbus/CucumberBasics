Feature: Animal
  As a Classy Hotel worker
  Given a client who is an animal
  I want to track the name, type, age, and if the client is old

Scenario Outline: Animal Creation
  Given a <animal_age> year old <animal_type> name <animal_name>
  Then the animal is <old>
  And the name, age, and type should match

Examples:
  | animal_age | animal_type | animal_age  | old     |
  | Harry      | cat         | 1           | not old |
  | Winnie     | dog         | 1           | not old |
  | Old Yeller | dog         | 10          | old     |
