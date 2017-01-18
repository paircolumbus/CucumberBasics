Feature: Demonstrate the features of a cat

Scenario: Cat is old
  Given a "cat"
  When older than 3 years old
  Then it is confirmed old

Scenario: Cat is chatty
  Given a "cat"
  When it is confirmed a "cat"
  Then the "cat" responds with "Meow!"

Scenario: Dog is chatty
  Given a "dog"
  When it is confirmed a "dog"
  Then the "dog" responds with "Woof!"

Scenario: Cow is chatty
  Given a "cow"
  When it is confirmed a "cow"
  Then the "cow" responds with "Moo!"

Scenario: Fox is chatty
  Given a "fox"
  When it is confirmed a "fox"
  Then the "fox" responds with "Yip!"

Scenario: Not your traditional animal
  Given a "human"
  When it is confirmed a "human"
  Then the "human" responds with "Me Tarzan!"
