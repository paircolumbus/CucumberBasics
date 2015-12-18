Feature: Clientele Tracker
  The client (a classy hotel for animals) wants to be able to track their clientele.
  We need to be able to track the name, type, and age of every animal.
  The program needs to put out the correct data when we run our reader methods.
  Animal.name, Animal.type, Animal.age, Animal.old?


  Scenario: Trudy
    Given Trudy, a 17-year old lemur and guest at the hotel
    When we track her
    Then the age should be 17
    And the name should be Trudy
    And the type should be lemur
    And she should be old

 Scenario: Oscar
   Given Oscar, a 2-year old green sea turtle
   When we track him
   Then he should not be old

