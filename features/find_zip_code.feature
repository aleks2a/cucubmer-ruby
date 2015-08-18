Feature: Test look up a zip code page
  @zip
  Scenario Outline: Happy path for Look up a zip code
    Given I navigate to USPS Look up Zip Code page
    And I type "1600 Pennsylvania Avenue Northwest" to street address field
    Then I type "Washington" to city field
    Then I select "DC - District of Columbia" from states drop down list
    and I press Find Zip code button
    Then I see results on Look up a zip code page

    @zip
    #Example how to find elements
    Scenario: Element locators
      Given I navigate to home page
      Then I press calculate a price link
      Then I verify ZIP Code Lookup url
      And I type "94000" to From ZIP Code
      Then I click on Post Office Locator link


