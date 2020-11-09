Feature: Homepage links to Cucumber test log

  @mechanize
  Scenario: Clicking the cucumber test log link brings me to the cucumber test log
    Given I am on the saas_cardservice homepage
    When I click the Cucumber Logs button
    Then I should be on "https://reports.cucumber.io/reports/b514095d-bba3-4e92-9011-de606e2cec25"
