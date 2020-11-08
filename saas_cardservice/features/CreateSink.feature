#####################
#
#   Name: CreateSink.feature
#   Contributors: Addison Armstrong
#   Description: This is a feature cucumber set to test different scenarios of the sink implementation
#
####################



Feature: Creation of Sink

  # Scenario to check if the sink is created correctly with nothing inside the 'pile'
  Scenario: I have a sink with no cards
    When I have created a sink
    Then I expect there to be no cards

  # Scenario to check if the sink is created correctly and if the sink contains some cards (>0)
  Scenario: I have a sink with some cards
    When I have created a sink
    Then I expect there to be some cards

  # Scenario to check if the sink has all cards
  Scenario: I have a sink with all 52 cards
    When I have created a sink
    Then I expect there to be "52" Cards total

  # Scenario to check if the sink has 16 cards
  Scenario: I have a sink with 16 cards
    When I have created a sink
    Then I expect there to be "16" Cards total

  # Scenario to check if the sink has the Ace of Spades
  Scenario: I have a sink with the Ace of Spades
    When I have created a sink
    Then I expect there to be the "Ace" of "Spades"

  # Scenario to check if the sink has the 6 of Hearts
  Scenario: I have a sink with the 6 of Hearts
    When I have created a sink
    Then I expect there to be the "6" of "Hearts"

  # Scenario to check if the sink has the 9 of Clubs
  Scenario: I have a sink with the 9 of Clubs
    When I have created a sink
    Then I expect there to be the "9" of "Clubs"

  # Scenario to check if the sink has the King of Diamonds
  Scenario: I have a sink with the King of Diamonds
    When I have created a sink
    Then I expect there to be the "King" of "Diamonds"

  # Scenario to check if the sink has 1 Ace
  Scenario: I have a sink with 1 Ace
    When I have created a sink
    Then I expect there to be "1" "Ace"

  # Scenario to check if the sink has 2 Aces
  Scenario: I have a sink with 2 Aces
    When I have created a sink
    Then I expect there to be "2" "Ace"

  # Scenario to check if the sink has 3 Aces
  Scenario: I have a sink with 3 Aces
    When I have created a sink
    Then I expect there to be "3" "Ace"

  # Scenario to check if the sink has 4 Aces
  Scenario: I have a sink with 4 Aces
    When I have created a sink
    Then I expect there to be "4" "Ace"