When(/^I have created a basic deck$/) do
  Pile.create_pile!({ Name: 'Deck', pile_type: 'deck' })
end

Then(/^I expect there to be 52 Cards total$/) do
  counter = 0
  Pile.all.each do |pile|
    pile.cards.each do
      counter += 1
    end
  end
  expect(counter).to equal(52)
end

Then(/^I expect there to be 13 cards with the "([^"]*)" suit$/) do |suit|
  counter = 0
  Pile.all.each do |pile|
    pile.cards.each do |card|
      counter += 1 if card.suit.eql? suit
    end
  end
  expect(counter).to equal(13)
end

Then(/^I expect there to be 4 cards with the value "([^"]*)"$/) do |value|
  counter = 0
  Pile.all.each do |pile|
    pile.cards.each do |card|
      counter += 1 if card.value.eql? value
    end
  end
  expect(counter).to equal(4)
end

And(/^I shuffle the deck$/) do
  deck = Pile.find_by(Name: 'Deck')
  deck.shuffle_pile
end

Then(/^I should see that the deck has changed order$/) do
  deck = Pile.find_by(Name: 'Deck')
  possible_suits = %w[D S H C]
  possible_values = %w[A 2 3 4 5 6 7 8 9 10 J Q K]
  spot = 0
  is_changed = false
  possible_values.each do |value|
    possible_suits.each do |suit|
      card = Card.where(pile: deck).where(position: spot)
      is_changed = true unless card.pluck(:value).eql?(value) && card.pluck(:suit).eql?(suit)
      spot += 1
    end
  end
  expect(is_changed).to be_truthy
end