When(/^I have created a card with the suit "([^"]*)" and the value "([^"]*)"$/) do |suit, value|
  Card.create!({:suit => suit, :value => value})
end

Then(/^I should have a card entry with the suit "([^"]*)" and value "([^"]*)" in the database$/) do |suit, value|
  found = false
  Card.all.each do |card|
    found = true if card.suit.eql? suit and card.value.eql? value
  end
  expect(found).to be_truthy
end