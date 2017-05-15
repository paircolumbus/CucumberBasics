Feature: Demonstrate how the clientele will respond

Scenario: Cat is called Bob
  Given a "cat" named "Bob" that is 10 years old
  Then they will respond to "Bob"

Scenario: Cat is 6 years old and old
  Given a "cat" named "Sally" that is 6 years old
  Then they are 6 years old
  And they are old

Scenario: Cat is chatty
  Given a "cat"
  Then it is confirmed a "cat"
  And the "cat" responds with "Meow!"

Scenario: Dog is chatty
  Given a "dog"
  Then it is confirmed a "dog"
  And the "dog" responds with "Woof!"

Scenario: Cow is chatty
  Given a "cow"
  Then it is confirmed a "cow"
  And the "cow" responds with "Moo!"

Scenario: Fox is chatty
  Given a "fox"
  Then it is confirmed a "fox"
  And the "fox" responds with "Yip!"

Scenario: Not your traditional animal
  Given a "human"
  Then it is confirmed a "human"
  And the "human" responds with "Me Tarzan!"
