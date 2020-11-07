When(/^I have created a card with the suit "([^"]*)" and the value "([^"]*)"$/) do |suit, value|
  deck = Pile.create!({:Name => 'Deck'})
  Card.create_card!({:suit => suit, :value => value, :pile => deck})
end

Then(/^I should have a card entry with the suit "([^"]*)" and value "([^"]*)" in the database$/) do |suit, value|
  found = false
  Pile.all.each do |pile|
    pile.cards.each do |card|
      found = true if card.suit.eql?(suit) && card.value.eql?(value)
    end
  end
  expect(found).to be_truthy
end

Then(/^I should not have a card entry with the suit "([^"]*)" and value "([^"]*)" in the database$/) do |suit, value|
  found = false
  Pile.all.each do |pile|
    pile.cards.each do |card|
      found = true if card.suit.eql?(suit) && card.value.eql?(value)
    end
  end
  expect(found).to be_falsey
end