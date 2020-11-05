When(/^I have created a card with the suit "([^"]*)" and the value "([^"]*)"$/) do |suit, value|
  Card.create_card!({:suit => suit, :value => value})
end

Then(/^I should have a card entry with the suit "([^"]*)" and value "([^"]*)" in the database$/) do |suit, value|
  found = false
  Card.all.each do |card|
    found = true if card.suit.eql? suit and card.value.eql? value
  end
  expect(found).to be_truthy
end

Then(/^I should not have a card entry with the suit "([^"]*)" and value "([^"]*)" in the database$/) do |arg1, arg2|
  found = false
  Card.all.each do |card|
    found = true if card.suit.eql? suit and card.value.eql? value
  end
  expect(found).to be_falsey
end