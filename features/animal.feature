#Create your feature here
Feature: Animal
         In order to properly cater to right animals
         I am the hotel manager
         I want animal's name,type, age and whether or not it is old

Scenario: Get animal details
          Given an animal
          Then His name is "Bob"
          Then His type is "Cat"
          Then His age is 5
          And He is old
