require "selenium-webdriver"
require "rspec"

def create_browser
  @browser = Selenium::WebDriver.for :firefox
end



def usps
  USPS.new @browser
end