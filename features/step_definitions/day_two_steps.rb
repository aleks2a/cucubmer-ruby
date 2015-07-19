Given(/^I should( not)? see error message$/) do |condition|
  if condition == " not"
    puts "No error messages"
  else
    puts "I see error message"
  end
end

Given(/^execute nested steps$/) do
  step "I print in terminal Hello World"
end

Given(/^execute nested steps with parameter "([^"]*)"$/) do |param|
  steps %{
  Given I print in terminal name "#{param}"
  }
end