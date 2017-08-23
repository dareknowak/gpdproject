Given /^I am on the football page$/ do
  visit('http://sports.williamhill.com/betting/en-gb/football')
end

Then /^I should see "([^"]*)"$/ do |text|
  expect(page).to have_content "Football Highlights"
end

# Select exact match - provided by ID, for Home in this case and do the click so the bet field form appears on the top right
When /^I click the button/ do
  find(:xpath, "//button[contains(@id,'OB_OU1660538324')]").click
# Would be 'osom' to replace sleep with smarter approach
  sleep 5
end

# Find form field that contains provided id and set a bet with 0.05 value
When /^I set the bet/ do
  find(:xpath, "//div[contains(@id,'single-bet_1660538324L')]")
  fill_in 'stake-input__1660538324L', :with => '0.05'
  sleep 5
end