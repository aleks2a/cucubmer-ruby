Feature: Cucumber in depth

  Background:
    Given I should see error message

  Scenario: Optional step
    Then I should not see error message

  Scenario: Optional step
    Then I should not see error message

  Scenario: nested steps
    Given execute nested steps

  Scenario: nested steps with parameters
    Given execute nested steps with parameter "Hello world!"

