#Create your feature here
Feature: Tracking Client
	In order to keep track of the clients
	As a Hotel Manager
	I want to have a system that stores every client details

	Scenario: Details
		Given a animal "Tommy", "Dog", "3"
    	Then name of the animal is "Tommy"
    	And type of the animal is "Dog"
    	And age of the animal is "3"
    	And Should be older
