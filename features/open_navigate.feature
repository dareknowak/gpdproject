Feature: Enter
  In order to find pages on the web
  As an information seeker
  I want to be able to open football events

  Scenario: Navigate to football
    Given I am on the football page
    Then I should see "Football Highlights"
#    Then I should see "Liverpool vs Hoffenheim"
    When I click on