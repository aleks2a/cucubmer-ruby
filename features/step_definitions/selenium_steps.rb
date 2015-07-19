Given(/^I open browser and navigate to "([^"]*)"$/) do |url|
  @browser = Selenium::WebDriver.for :firefox
  @browser.navigate.to url
end

Then(/^I click on MyUSPS link$/) do
  @browser.find_element(:id, "link-myusps").click
end


Then(/^I click on Login button$/) do
  @browser.find_element(:id, "anchor-login").click
end

And(/^I type "([^"]*)" as a login$/) do |login|
  @browser.find_element(:id, "userName").send_keys login
end

Then(/^I type "([^"]*)" as a password$/) do |password|
  @browser.find_element(:id, "password").send_keys password
end


Then(/^I click on Signin button$/) do
  @browser.find_element(:id, "sign-in-button").click
end

And(/^I should be signed\-in as user "([^"]*)"$/) do |name|
  puts @browser.find_element(:id, "anchor-login").text
end