When(/^I have created a basic deck$/) do
  Deck.create_deck!
end

Then(/^I expect there to be 52 Cards total$/) do
  counter = 0
  Deck.all.each do
    counter = counter + 1
  end
  expect(counter).to equal(52)
end

Then(/^I expect there to be 13 cards with the "([^"]*)" suit$/) do |suit|
  counter = 0
  Deck.all.each do |card|
    counter += 1 if card.suit.eql? suit
  end
  expect(counter).to equal?(13)
end

Then(/^I expect there to be 4 cards with the value "([^"]*)"$/) do |value|
  counter = 0
  Deck.all.each do |card|
    counter += 1 if card.value.eql? value
  end
  expect(counter).to equal?(4)
end