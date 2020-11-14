#####################
#
#   Name: CreateHand.feature
#   Contributors: Dylan McNamara
#   Description: This is a feature cucumber set to test different scenarios of the Hand implementation
#
####################



Feature: Creation of Hand

  # Scenario to check if the hand is created correctly with nothing inside the 'pile'
  Scenario: I have a hand with no cards
    When I have created a hand
    Then I expect there to be no cards in hands

  # Scenario to check if the hand is created correctly and if the hand contains some cards (>0)
  Scenario: I have a hand with some cards
    When I have created a hand
    And I have put "1" cards in the hand
    Then I expect there to be some cards in hands

  # Scenario to check if the hand has all cards
  Scenario: I have a hand with all 52 cards
    When I have created a hand
    And I have put "52" cards in the hand
    Then I expect there to be "52" Cards total among hands

  # Scenario to check if the hand has 16 cards
  Scenario: I have a hand with 16 cards
    When I have created a hand
    And I have put "16" cards in the hand
    Then I expect there to be "16" Cards total among hands

  # Scenario to check if the hand has the Ace of Spades
  Scenario: I have a hand with the Ace of Spades
    When I have created a hand
    And I have put the "Ace" of "Spades" in the hand
    Then I expect there to be the "Ace" of "Spades" in a hand

  # Scenario to check if the hand has the 6 of Hearts
  Scenario: I have a hand with the 6 of Hearts
    When I have created a hand
    And I have put the "6" of "Hearts" in the hand
    Then I expect there to be the "6" of "Hearts" in a hand

  # Scenario to check if the hand has the 9 of Clubs
  Scenario: I have a hand with the 9 of Clubs
    When I have created a hand
    And I have put the "9" of "Clubs" in the hand
    Then I expect there to be the "9" of "Clubs" in a hand

  # Scenario to check if the hand has the King of Diamonds
  Scenario: I have a hand with the King of Diamonds
    When I have created a hand
    And I have put the "King" of "Diamonds" in the hand
    Then I expect there to be the "King" of "Diamonds" in a hand

  # Scenario to check if the hand has 1 Ace
  Scenario: I have a hand with 1 Ace
    When I have created a hand
    And I have put "1" cards in the hand
    Then I expect there to be "1" "Ace" among hands

  # Scenario to check if the hand has 2 Aces
  Scenario: I have a hand with 2 Aces
    When I have created a hand
    And I have put "14" cards in the hand
    Then I expect there to be "2" "Ace" among hands

  # Scenario to check if the hand has 3 Aces
  Scenario: I have a hand with 3 Aces
    When I have created a hand
    And I have put "27" cards in the hand
    Then I expect there to be "3" "Ace" among hands

  # Scenario to check if the hand has 4 Aces
  Scenario: I have a hand with 4 Aces
    When I have created a hand
    And I have put "40" cards in the hand
    Then I expect there to be "4" "Ace" among hands