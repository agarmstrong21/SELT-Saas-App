When(/^I have created a hand$/) do
  Pile.create_pile!({ Name: 'hand', pile_type: 'hand' })
end

Then(/^I expect there to be no cards in hands$/) do
  # Finding the correct hand
  hand = Pile.all.find_by(Name: 'hand')

  # Checking to see if any cards exist in the hand
  counter = 0
  hand.cards.each do
    counter += 1
  end
  expect(counter).to equal(0)
end

Then(/^I expect there to be some cards in hands$/) do
  # Finding the correct hand
  hand = Pile.all.find_by(Name: 'hand')

  # Checks if there is at least one card in the hand
  counter = 0
  hand.cards.each do
    counter += 1
  end
  expect(counter).to equal(1)
end

Then(/^I expect there to be "([^"]*)" Cards total among hands$/) do |number|
  # Finding the correct hand
  hand = Pile.all.find_by(Name: 'hand')

  # Checking amount of cards in hand
  counter = 0
  hand.cards.each do
    counter += 1
  end
  expect(counter).to equal(number.to_i)
end

Then(/^I expect there to be the "([^"]*)" of "([^"]*)" in a hand$/) do |given_value, given_suit|
  # Finding the correct hand
  hand = Pile.all.find_by(Name: 'hand')

  # Checking to see if that given card is found in the hand
  counter = 0
  hand.cards.each do |card|
    if card.suit.eql? given_suit
      counter += 1 if card.value.eql? given_value
    end
  end
  expect(counter).to equal(1)
end

Then(/^I expect there to be "([^"]*)" "([^"]*)" among hands$/) do |number, given_value|
  # Finding the correct hand
  hand = Pile.all.find_by(Name: 'hand')

  # Checking amount of cards in hand that match the given_value
  counter = 0
  hand.cards.each do |card|
    counter += 1 if card.value.eql? given_value
  end
  expect(counter).to equal(number.to_i)
end

And(/^I have put the "([^"]*)" of "([^"]*)" in the hand$/) do |given_value, given_suit|
  # Finding the correct hand
  hand = Pile.all.find_by(Name: 'hand')

  # Creating the one given card
  Card.create!({value: given_value, suit: given_suit, pile: hand})
end

And(/^I have put "([^"]*)" cards in the hand$/) do |number|
  # Finding the correct hand
  hand = Pile.all.find_by(Name: 'hand')

  # Adding the 'number' amount of cards to the deck
  suits = ["Diamonds", "Spades", "Hearts", "Clubs"]
  values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]

  number = number.to_i

  suits.each do |suit|
    values.each do |value|
      unless number.eql? 0
        Card.create!({value: value, suit: suit, pile: hand})
        number -= 1
      end
    end
  end
end