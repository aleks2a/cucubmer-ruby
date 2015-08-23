Given(/^I navigate to home page$/) do
  create_browser
  usps.home_page.visit
end

Then(/^I click on login button$/) do
  usps.home_page.login_button.click
end

And(/^I type "([^"]*)" as a login$/) do |login|
  usps.login_page.login_field.send_keys login
end

And(/^I type "([^"]*)" as a password$/) do |password|
  usps.login_page.password_field.send_keys password
end

Then(/^I click on Signin button$/) do
  usps.login_page.signin_button.click
end

And(/^I should be signed\-in as a user "([^"]*)"$/) do |name|
  expect(usps.home_page.login_button.text).to be == "Hi, #{name}"

end

Given(/^I should be signed in with "([^"]*)" and "([^"]*)"$/) do |login, password|
  steps %{
    Then I click on login button
    And I type "#{login}" as a login
    And I type "#{password}" as a password
    Then I click on Signin button
    }
end

Then(/^I press calculate a price link$/) do
  usps.home_page.calculate_price.click
end


Then(/^I verify Zip Code Lookup URL$/) do
  #1 move 'zip_code_look_up_link' to own class page PriceCalculator
  #2 verify HREF is not empty
  usps.home_page.zip_code_look_up_link.attribute :href
end


Then(/^I click on Post office locator link$/) do
   usps.home_page.post_office_locator_link.click
  sleep 5
end
























