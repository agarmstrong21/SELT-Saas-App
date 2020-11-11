Feature: Homepage links to Cucumber test log

  @mechanize
  Scenario: Clicking the cucumber test log link brings me to the cucumber test log
    Given I am on the saas_cardservice homepage
    When I click the Cucumber Logs button
    Then I should be on "https://reports.cucumber.io/reports/3e15755b-507b-4ac6-8ab5-8c64ca949434"
