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

When /^I set the bet/ do
  find(:xpath, "//div[contains(@id,'single-bet_1652107170L')]")
  fill_in 'stake-input__1652107170L', :with => '0.05'
  sleep 15
end