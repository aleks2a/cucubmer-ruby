@my_tag
Feature: Introduction to Cucumber

  @simple @aaa
  Scenario: Hello World!
    Given I print in terminal Hello World
  @bbb @aaa
  Scenario: Print in terminal my name
    Given I print in terminal name Aleks

  Scenario: scenario with parameters
    Given I print in terminal name "Aleks"
    Given I print in terminal name "Igor"

  Scenario Outline: multiplies names
    Given I print in terminal name "<name>"

  Examples:my examples
    | name    |
    | Aleks   |
    | Igor    |
    | Vitaliy |

  Scenario: print first and last name with params
    Given I print in terminal first name "Aleks" and last name "Petrov"

  Scenario Outline: print first and last name with params
    Given I print in terminal first name "<first_name>" and last name "<last_name>"
  Examples:
    |first_name|last_name|
    |Aleks     |Petrov   |
    |Igor      |Ivanov   |













