Feature: Creation of Deck of 52 cards

  Scenario: I have a deck of 52 cards
    When I have created a basic deck
    Then I expect there to be 52 Cards total

  Scenario: I want there to be 13 cards in the Hearts Suit
    When I have created a basic deck
    Then I expect there to be 13 cards with the "Hearts" suit

  Scenario: I want there to be 13 cards in the Diamonds Suit
    When I have created a basic deck
    Then I expect there to be 13 cards with the "Diamonds" suit

  Scenario: I want there to be 13 cards in the Spades Suit
    When I have created a basic deck
    Then I expect there to be 13 cards with the "Spades" suit

  Scenario: I want there to be 13 cards in the Clubs Suit
    When I have created a basic deck
    Then I expect there to be 13 cards with the "Clubs" suit

  Scenario: I want there to be 4 cards with the face value Ace
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Ace"

  Scenario: I want there to be 4 cards with the face value Two
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Two"

  Scenario: I want there to be 4 cards with the face value Three
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Three"

  Scenario: I want there to be 4 cards with the face value Four
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Four"

  Scenario: I want there to be 4 cards with the face value Five
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Five"

  Scenario: I want there to be 4 cards with the face value Six
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Six"

  Scenario: I want there to be 4 cards with the face value Seven
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Seven"

  Scenario: I want there to be 4 cards with the face value Eight
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Eight"

  Scenario: I want there to be 4 cards with the face value Nine
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Nine"

  Scenario: I want there to be 4 cards with the face value Ten
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Ten"

  Scenario: I want there to be 4 cards with the face value Jack
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Jack"

  Scenario: I want there to be 4 cards with the face value Queen
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Queen"

  Scenario: I want there to be 4 cards with the face value King
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "King"
