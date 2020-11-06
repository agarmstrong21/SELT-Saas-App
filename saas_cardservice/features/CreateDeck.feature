Feature: Creation of Deck of 52 cards

  Scenario: I have created a deck of cards
    When I have created a basic deck
    Then I expect there to be 52 Cards total

    When I have created a basic deck
    Then I expect there to be 13 cards with the "Hearts" suit

    When I have created a basic deck
    Then I expect there to be 13 cards with the "Diamonds" suit

    When I have created a basic deck
    Then I expect there to be 13 cards with the "Spades" suit

    When I have created a basic deck
    Then I expect there to be 13 cards with the "Clubs" suit

    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Ace"

    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Two"

    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Three"

    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Four"

    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Five"

    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Six"

    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Seven"

    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Eight"

    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Nine"

    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Ten"

    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Jack"

    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Queen"

    When I have created a basic deck
    Then I expect there to be 4 cards with the value "King"
