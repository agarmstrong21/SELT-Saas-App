Feature: Creation of a card

Scenario:  Create the King of Diamonds
  When I have created a card with the suit "Diamonds" and the value "King"
  Then I should have a card entry with the suit "Diamonds" and value "King" in the database

Scenario:  Create the Ace of Clubs
  When I have created a card with the suit "Clubs" and the value "Ace"
  Then I should have a card entry with the suit "Clubs" and value "Ace" in the database

Scenario:  Create the Four of Hearts
  When I have created a card with the suit "Hearts" and the value "Four"
  Then I should have a card entry with the suit "Hearts" and value "Four" in the database

Scenario:  Create the Six of Spades
  When I have created a card with the suit "Diamonds" and the value "King"
  Then I should have a card entry with the suit "Diamonds" and value "King" in the database