Feature: selenium practice

  Scenario: Open browser
    Given I open browser and navigate to "http://usps.com"
    Then I click on MyUSPS link

  Scenario: click on link
    Given I open browser and navigate to "http://usps.com"
    Then I click on Login button
    And I type "bayqatraining@gmail.com" as a login
    Then I type "root1234" as a password
    Then I click on Signin button
    And I should be signed-in as user "Hi, Aleks"
