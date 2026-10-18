Feature: Search on diki.pl dictionary
  In order to find Polish translations of English words
  As a visitor
  I want to search for a word and verify it has the expected translation

  Scenario: Search for 'ruffle' and verify 'mankiet' appears in translations
    Given I am on the diki.pl homepage
    When I search for "ruffle"
    Then I should see "mankiet" on the page
