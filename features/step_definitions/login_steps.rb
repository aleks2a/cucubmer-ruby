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