Feature: Track animals
  keep the track of name, type and age of every animal
  Based on the age determine whether the animal is old or not

Scenario: An animal
  Given Animal is a lion named Leo who is 5 years old
  Then name of the animal is "Leo"
  And its type is lion
  And it is 5 years old
  And the animal is old
