Feature: Test look up a zip code page

  Scenario: Happy path for Look up a zip code
    Given I navigate to USPS Look up Zip Code page
    And I type "1600 Pennsylvania Avenue Northwest" to street address field
    Then I type "Washington" to city field
    Then I select "DC - District of Columbia" from states drop down list
    And I press Find Zip code button
    Then I see results on Look up a zip code page