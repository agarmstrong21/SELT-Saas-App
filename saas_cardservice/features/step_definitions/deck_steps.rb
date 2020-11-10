When(/^I have created a basic deck$/) do
  Pile.create_deck!
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