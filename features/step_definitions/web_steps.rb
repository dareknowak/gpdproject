Given /^I am on the diki\.pl homepage$/ do
  visit('https://www.diki.pl')
  sleep 2
  cookie_button = find(:css, '#CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll', wait: 5)
  puts "Cookie popup found, clicking..."
  cookie_button.click
  sleep 1
rescue Capybara::ElementNotFound
  puts "Cookie popup NOT found - skipping"
end

# Find the search input (diki uses input[name='q']), fill it and submit
When /^I search for "([^"]*)"$/ do |word|
  find(:css, "input[name='q']", wait: 10).set(word)
  sleep 1
  find(:css, "input[name='q']").send_keys(:return)
  sleep 2
end

Then /^I should see "([^"]*)" on the page$/ do |text|
  expect(page).to have_content(text)
  sleep 3
end
