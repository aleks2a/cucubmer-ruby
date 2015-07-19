Before do
  #execute any code before each scenario
  # puts "!!!!!!!!!!!!!!!!!!!"
end

After do |scenario|
  #execute any code after each scenario
  # scenario.failed?
  #take screenshot
end

AfterStep do
  #execute any code after each step
end

at_exit do
  #execute any code after last scenario
end


