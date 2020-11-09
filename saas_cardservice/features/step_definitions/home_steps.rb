Given /^I am on the saas_cardservice homepage$/ do
  visit home_home_path
end

When /^I click the Cucumber Logs button$/ do
  click_on('button')
end

Then /^I should be on "(.*?)"$/ do |url|
  page.should have_content("Cucumber Reports")
end
