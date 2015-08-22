Then(/^I press calculate a price link$/) do
  usps.home_page.calculate_prise.click
end


Then(/^I verify ZIP Code Lookup url$/) do
  usps.calculate_price.zip_code_look_up_link.attribute :href
end

And(/^I type "([^"]*)" to From ZIP Code$/) do |text|
  usps.calculate_price.from_zip_field.send_keys text
end

Then(/^I click on Post Office Locator link$/) do
  usps.calculate_price.post_office_locator_link.click
end