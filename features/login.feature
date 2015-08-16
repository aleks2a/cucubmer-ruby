Feature: Login functionality
  @login
  Scenario: Login with valid credentials
    Given I navigate to home page
    Then I click on login button
    And I type "bayqatraining@gmail.com" as a login
    And I type "Root123456@" as a password
    Then I click on Signin button
    And I should be signed-in as a user "Aleks"

  Scenario: Login with valid credentials(using nested step)
    #run at home
    Given I navigate to home page
    Given I should be signed in with "bayqatraining@gmail.com" and "Root123456@"

