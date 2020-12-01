#####################
#
#   Name: ShuffleDeck.feature
#   Contributors: Kayla Felderman
#   Description: This is a feature cucumber set to test that the deck gets shuffled
#
####################

Feature: Shuffle Deck

Scenario:  Shuffle the deck
  When I have created a basic deck
  And I shuffle the deck
  Then I should see that the deck has changed order

