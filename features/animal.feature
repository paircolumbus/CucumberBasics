Feature: Remember and recall facts about the animal

    We should be able to retrieve facts about the animal.

    Scenario: getting the animal's name
        Given an animal
        When we have a 2 year old dog named 'Fido'
        Then the animal's name should be 'Fido'

    Scenario: getting the animal's type
        Given an animal
        When we have a 2 year old dog named 'Fido'
        Then the animal's type should be 'dog'

    Scenario: getting the animal's age
        Given an animal
        When we have a 2 year old dog named 'Fido'
        Then the animal's age should be 2

    Scenario: determine if the animal is young
        Given a 2 year old dog named 'Fido'
        When younger than 3
        Then the animal should not be old

    Scenario: determine if the animal is young
        Given a 9 year old dog named 'Fido'
        When older than 3
        Then the animal should be old
