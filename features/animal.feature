Feature: Animal
  In order to properly address all animals
  As an animal
  I want to provide my name, type and age
  As an animal older than 3 years
  I want to say I'm old


  Scenario: Get the animal information

    Given I'm a 3 year old cat named 'felix'

    When ask about my "name"
    Then should get the value "felix"

    When ask about my "type"
    Then should get the value "cat"

    When ask about my "age"
    Then should get the value "3"

  Scenario: Say if the animal is old

    Given I'm a 4 years old animal
    When older than 3
    Then should be old

    Given I'm a 2 years old animal
    When younger or equeal to 3
    Then should not be old
