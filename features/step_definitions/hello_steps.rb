Given(/^I print in terminal Hello World$/) do
  puts "HELLO WORLD"
end

Given(/^I print in terminal name Aleks$/) do
  puts "My name is Aleks"
end

Given(/^I print in terminal name "(.*?)"$/) do |name|
  puts name
end

Given(/^I print in terminal first name "(.*?)" and last name "(.*?)"$/) do |first_name, last_name|
  puts first_name
  puts last_name
end