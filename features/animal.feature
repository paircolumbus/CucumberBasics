#Create your feature here

Feature: Animal
  As a cat, I should have name, type, and age
  and I'm considered old if I'm over 3 years.

Scenario: Cat
  Given an animal that is four years old
  Then it is named 'Gidget'
  And it has a type of 'cat'
  And it is considered old
