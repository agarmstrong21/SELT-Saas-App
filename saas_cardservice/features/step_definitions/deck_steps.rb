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
  possible_suits = ['Diamonds','Spades','Hearts','Clubs']
  possible_values = ['Ace','Two','Three','Four','Five','Six','Seven','Eight','Nine','Ten','Jack','Queen','King']
  spot = 0
  is_changed = false
  possible_values.each do |value|
    possible_suits.each do |suit|
      card = Card.where(pile: deck).where(position: spot)
      puts "---------------------------"
      puts (card.pluck(:value) + card.pluck(:suit))
      is_changed = true unless card.pluck(:value).eql?(value) && card.pluck(:suit).eql?(suit)
      spot += 1
    end
  end
  expect(is_changed).to be_falsey
end