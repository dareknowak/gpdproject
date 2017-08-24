Given /^I am on the football page$/ do
  visit('http://sports.williamhill.com/betting/en-gb/football')
end

# Simple expect page that I check where am I, before some clicks are fired,
# I reuse it in the feature steps looking for some text over the page
Then /^I should see "([^"]*)"$/ do |text|
  expect(page).to have_content text
end

When /^I click the button/ do
  # Here I had to fiddle a bit with busy indicator that caused sometimes issues with running next lines of test, so I added css and wait time up to 10
  find(:css, "#betslip-message-empty", :wait => 10)
  # Since the IDs of the buttons that user selects from Home/Draw/Away are dynamic I had to figure out some simple method.
  # 'all' returns an array with elements (0 is first value in the array), first child find element in first row,
  # then click is fired. I've set initially sleep (for qck test) which is brutal idea (don't go thru my commits ;),
  # searching over css is a bit wiser, I believe that If I had to, I'd also find some different approach.
  # Whitespace between .btmarket__selection:first-child and .btn.betbutton.oddsbutton means that the element after whitespace will be taken from the next 'line'
  all(:css, ".btmarket__selection:first-child .btn.betbutton.oddsbutton", :wait => 5)[0].click
end

# Again, as above, find fired on css from the set of divs etc. then I set the form with 0.05 value
When /^I set the bet/ do
  find(:css, ".betslip-selection__stake-container.betslip-selection__stake-container--single input").set('0.05')
  click_button('Place Bet')
end