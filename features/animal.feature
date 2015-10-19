Feature: Animal
  Track name, type, age, old? of every animal

  Scenario: Animal info
    Given a 12 year old cat named Izzy
    When asked my name
    Then the result should be Izzy
    When asked my type
    Then the result should be cat
    When asked my age
    Then the result should be 12

  Scenario: Is animal old
    Given a 15 year old animal
    When animal older than 10
    Then the animal is old
    Given a 7 year old animal
    When animal younger than 10
    Then the animal is not old
