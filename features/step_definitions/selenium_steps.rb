
Given(/^I open browser and navigate to "([^"]*)"$/) do |url|
  @browser = Selenium::WebDriver.for :firefox
  @browser.manage.timeouts.implicit_wait = 5
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
  value_from_browser = @browser.find_element(:id, "anchor-login").text
  expect(value_from_browser).to be == name
end

Then(/^I navigate to USPS Look up Zip Code page$/) do
  @browser.find_element(:css, "a.quick-tools--link.quick-tools--zip").click
end

And(/^I press Find Zip code button$/) do
  @browser.find_element(:id, "lookupZipFindBtn").click
end

Then(/^I should see Valid city error message$/) do
  expect(@browser.find_element(:id, "error-tCity").text).to be == "You did not enter a valid city."
  expect(@browser.find_element(:id, "error-tCity").displayed?).to be == true
end

Then(/^I should see Valid state error message$/) do
  expect(@browser.find_element(:id, "error-sState").text).to be == "You did not enter a valid state."
  expect(@browser.find_element(:id, "error-sState").displayed?).to be == true
end

And(/^I type "([^"]*)" to street address field$/) do |address|
  @browser.find_element(:id, "tAddress").send_keys address
end

Then(/^I type "([^"]*)" to city field$/) do |city|
  @browser.find_element(:id, "tCity").send_keys city
end

Then(/^I select "([^"]*)" from states drop down list$/) do |state|
  @browser.find_element(:css, "span.select-current-text").click
  state_list = @browser.find_element(:css, "ul.select-ul").find_elements(:tag_name, "a")

  # state_list.each do |element|
  #   if element.text == state
  #     element.click
  #     break
  #   end
  # end

  state_list.find{|element| element.text == state}.click

end


Then(/^I see results on Look up a zip code page$/) do
  cells_result = @browser.find_element(:id, "result-list").find_elements(:tag_name, "li")
  expect(cells_result.size).to be > 0

  cells_result.each do |element|
    expect(element.find_element(:css, "span.zip").text).to be_truthy
  end

end




















