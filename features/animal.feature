#Create your feature here

Feature: Animal
  As a hotel manager
  I want to know the name, type, and age of all animals

  Scenario Outline: animals checking into the hotel
    Given a <type> named <name> that is <age> years old
    When the <type> <verb> older than 3
    Then the <type> <verb> old

    Examples:
      | name  | type   | age | verb  |
      | Proxy | dog    | 2   | isn't |
      | Rover | dog    | 4   | is    |
      | Rex   | lizard | 3   | isn't |
