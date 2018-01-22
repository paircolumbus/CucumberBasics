Feature: Animal
  In order to properly track animals
  An animal must have a name, type and age
  And can determine if it's old

  Scenario: Bear
    Given a 3 year old Bear named Charles
    Then it should have the name Charles
    And have the species be Bear
    And be 3 years old
    And is not old

