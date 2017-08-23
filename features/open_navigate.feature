Feature: Enter
  In order to find pages on the web
  As an information seeker
  I want to be able to open football events

  Scenario: Navigate to football and place a bet
    Given I am on the football page
    Then I should see "Football Highlights"
    When I click the button
    Then I should see "Hoffenheim @ 4/1"
    When I set the bet
    Then I should see "To return:"
