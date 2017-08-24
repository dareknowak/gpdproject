Given /^I am on the football page$/ do
  visit('http://sports.williamhill.com/betting/en-gb/football')
end

Then /^I should see "([^"]*)"$/ do |text|
  expect(page).to have_content "Football Highlights"
end

When /^I click the button/ do
  # find(:xpath, "//button[contains(@id,'OB_OU1660538324')]", :wait => 5).click
  # all returns an array with elements (0 is first value in the array), first child find element in first row,
  # then click is executed, I've set 5 to wait a bit
  # space between .btmarket__selection:first-child and .btn.betbutton.oddsbutton means that the element will be taken from the next line
  all(:css, ".btmarket__selection:first-child .btn.betbutton.oddsbutton", :wait => 5)[0].click
# Would be 'osom' to replace sleep with smarter approach
  sleep 5
end

# Find form field that contains provided id and set a bet with 0.05 value
When /^I set the bet/ do
  find(:xpath, "//div[contains(@id,'single-bet_1660538324L')]")
  fill_in 'stake-input__1660538324L', :with => '0.05'
  click_button('Place Bet')
  sleep 5
end