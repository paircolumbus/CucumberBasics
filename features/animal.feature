Feature: Animal
  In order to properly identify animals
  An Animal should have name, type, and age
  Based on age, can tell if it's old

Scenario: cat
  Given a cat called Tom who is 2 years old
  Then name should be Tom
  And is of type 'cat'
  And be of age 2
  Then should not be old
