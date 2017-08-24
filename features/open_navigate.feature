Feature: Visit the sports.williamhill.com
  In order to set a bet for test purposes
  As a visitor without account
  I want to select some event, place a bet and check that it has been done (partially)

  Scenario: Navigate to football subpage and place a bet
    Given I am on the football page
    Then I should see "Football Highlights"
    When I click the button
    Then I should see "90 Minutes"
    When I set the bet
    Then I should see "You must be logged in to place a bet, please log in and try again"
