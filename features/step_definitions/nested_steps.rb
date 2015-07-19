And(/^I print account First Name$/) do
  puts "FIRST NAME"
end

And(/^I print account Last Name$/) do
  puts "LAST NAME"
end

And(/^I print account DOB$/) do
  puts "DATE OF BIRTH"
end

Given(/^provide full account info$/) do
  steps %{
    Given I print account First Name
    Then I print account Last Name
    And I print account DOB
}
end