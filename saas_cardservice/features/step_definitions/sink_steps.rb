When(/^I have created a sink$/) do
  Pile.create_pile({ Name: 'Sink', pile_type: 'sink' })
end

Then(/^I expect there to be no cards$/) do
  # Finding the correct sink
  sink = Pile.all.find_by(Name: 'Sink')

  # Checking to see if any cards exist in the sink
  counter = 0
  sink.cards.each do
    counter += 1
  end
  expect(counter).to equal(0)
end

Then(/^I expect there to be some cards$/) do
  # Finding the correct Sink
  sink = Pile.all.find_by(Name: 'Sink')

  # Checks if there is at least one card in the sink
  counter = 0
  sink.cards.each do
    counter += 1
  end
  expect(counter).to equal(1)
end

Then(/^I expect there to be "([^"]*)" Cards total$/) do |number|
  # Finding the correct Sink
  sink = Pile.all.find_by(Name: 'Sink')

  # Checking amount of cards in sink
  counter = 0
  sink.cards.each do
    counter += 1
  end
  expect(counter).to equal(number.to_i)
end

Then(/^I expect there to be the "([^"]*)" of "([^"]*)"$/) do |given_value, given_suit|
  # Finding the correct Sink
  sink = Pile.all.find_by(Name: 'Sink')

  # Checking to see if that given card is found in the sink
  counter = 0
  sink.cards.each do |card|
    if card.suit.eql? given_suit
      counter += 1 if card.value.eql? given_value
    end
  end
  expect(counter).to equal(1)
end

Then(/^I expect there to be "([^"]*)" "([^"]*)"$/) do |number, given_value|
  # Finding the correct Sink
  sink = Pile.all.find_by(Name: 'Sink')

  # Checking amount of cards in sink that match the given_value
  counter = 0
  sink.cards.each do |card|
    counter += 1 if card.value.eql? given_value
  end
  expect(counter).to equal(number.to_i)
end

And(/^I have put the "([^"]*)" of "([^"]*)" in the sink$/) do |given_value, given_suit|
  # Finding the correct Sink
  sink = Pile.all.find_by(Name: 'Sink')

  # Creating the one given card
  Card.create!({value: given_value, suit: given_suit, pile: sink})
end

And(/^I have put "([^"]*)" cards in the sink$/) do |number|
  # Finding the correct Sink
  sink = Pile.all.find_by(Name: 'Sink')

  # Adding the 'number' amount of cards to the deck
  suits = ["Diamonds","Spades","Hearts","Clubs"]
  values = ["Ace","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten","Jack","Queen","King"]

  number = number.to_i

  suits.each do |suit|
    values.each do |value|
      unless number.eql? 0
        Card.create!({ value: value, suit: suit, pile: sink })
        number -= 1
      end
    end
  end
end