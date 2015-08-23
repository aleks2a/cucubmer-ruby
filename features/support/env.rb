require "selenium-webdriver"
require "rspec"
require_relative "../page_models/page_actions.rb"
Dir["../page_models/*.rb"].each {|file| require file}



SERVER_LABELS = {
    :production => "usps.com",
    :trunk => "trunk.usps.com",
    :integration => "integration.usps.com"
}

def get_browser
  (ENV['BROWSER'] || :firefox).to_sym
end

def get_environment
  # ENV['SERVER'] will read system variable from your machine
  env = (ENV['SERVER'] || :production).to_sym
  #get key value from SERVER_LABELS hash
  SERVER_LABELS[env]
end


def create_browser
  @browser = Selenium::WebDriver.for get_browser
end

def usps
  @usps ||= USPS.new @browser
end
