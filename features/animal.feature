Feature: Animal
  For the Classy Hotel to track their animal clientele
  they use a client's name, type and age

  Scenario: Coolio the Capybara
    Given a capybara named 'Coolio' who is 10 years of age
    Then it should be tracked as a capybara
    And it should be named 'Coolio'
    And it should be 10 years old
    And it should be considered old

  Scenario: Frank the Fox
    Given a fox named 'Frank' who is 2 years of age
    Then it should be tracked as a fox
    And it should be named 'Frank'
    And it should be 2 years old
    And it should be considered young