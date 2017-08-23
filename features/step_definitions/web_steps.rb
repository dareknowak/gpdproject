Given /^I am on the football page$/ do
  visit('http://sports.williamhill.com/betting/en-gb/football')
end

Then /^I should see "([^"]*)"$/ do |text|
  expect(page).to have_content "Football Highlights"
end

When /^I click the button/ do
  find(:xpath, "//button[contains(@id,'OB_OU1652107170')]").click
  sleep 15
end