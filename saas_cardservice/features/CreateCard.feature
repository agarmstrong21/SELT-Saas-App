#####################
#
#   Name: CreateCard.feature
#   Contributors: Kayla Felderman
#   Description: This is a feature cucumber set to test card creation for different value inputs.
#
####################

Feature: Creation of a card

Scenario:  Create the King of Diamonds
  When I have created a card with the suit "D" and the value "K"
  Then I should have a card entry with the suit "D" and value "K" in the database

Scenario:  Create the Ace of Clubs
  When I have created a card with the suit "C" and the value "A"
  Then I should have a card entry with the suit "C" and value "A" in the database

Scenario:  Create the Four of Hearts
  When I have created a card with the suit "H" and the value "4"
  Then I should have a card entry with the suit "H" and value "4" in the database

Scenario:  Create the Six of Spades
  When I have created a card with the suit "S" and the value "6"
  Then I should have a card entry with the suit "S" and value "6" in the database

Scenario:  Try to create a card with a wrong suit
  When I have created a card with the suit "Jokers" and the value "6"
  Then I should not have a card entry with the suit "Jokers" and value "6" in the database

Scenario:  Try to create a card with a wrong value
  When I have created a card with the suit "S" and the value "Eleven"
  Then I should not have a card entry with the suit "S" and value "Eleven" in the database

Scenario:  Try to create a card with a empty values
  When I have created a card with the suit "" and the value ""
  Then I should not have a card entry with the suit "" and value "" in the database