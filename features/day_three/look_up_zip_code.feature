Feature: Test look up a zip code page

  Scenario: Verify error messages for required fields
    Given I open browser and navigate to "http://usps.com"
    Then I navigate to USPS Look up Zip Code page
    And I press Find Zip code button
    Then I should see Valid city error message
    Then I should see Valid state error message

  Scenario: Happy path for Look up a zip code
    Given I open browser and navigate to "http://usps.com"
    Then I navigate to USPS Look up Zip Code page
    And I type "1600 Pennsylvania Avenue Northwest" to street address field
    Then I type "Washington" to city field
    Then I select "DC - District of Columbia" from states drop down list
    And I press Find Zip code button
    Then I see results on Look up a zip code page


