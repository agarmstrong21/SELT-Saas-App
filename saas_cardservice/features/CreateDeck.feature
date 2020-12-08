Feature: Creation of Deck of 52 cards

  Scenario: I have a deck of 52 cards
    When I have created a basic deck
    Then I expect there to be 52 Cards total

  Scenario: I want there to be 13 cards in the H Suit
    When I have created a basic deck
    Then I expect there to be 13 cards with the "H" suit

  Scenario: I want there to be 13 cards in the D Suit
    When I have created a basic deck
    Then I expect there to be 13 cards with the "D" suit

  Scenario: I want there to be 13 cards in the S Suit
    When I have created a basic deck
    Then I expect there to be 13 cards with the "S" suit

  Scenario: I want there to be 13 cards in the C Suit
    When I have created a basic deck
    Then I expect there to be 13 cards with the "C" suit

  Scenario: I want there to be 4 cards with the face value A
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "A"

  Scenario: I want there to be 4 cards with the face value 2
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "2"

  Scenario: I want there to be 4 cards with the face value 3
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "3"

  Scenario: I want there to be 4 cards with the face value 4
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "4"

  Scenario: I want there to be 4 cards with the face value 5
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "5"

  Scenario: I want there to be 4 cards with the face value 6
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "6"

  Scenario: I want there to be 4 cards with the face value 7
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "7"

  Scenario: I want there to be 4 cards with the face value 8
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "8"

  Scenario: I want there to be 4 cards with the face value 9
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "9"

  Scenario: I want there to be 4 cards with the face value 10
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "10"

  Scenario: I want there to be 4 cards with the face value J
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "J"

  Scenario: I want there to be 4 cards with the face value Q
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "Q"

  Scenario: I want there to be 4 cards with the face value K
    When I have created a basic deck
    Then I expect there to be 4 cards with the value "K"
