class PageActions

  include RSpec::Matchers

  def initialize browser
    @browser = browser
  end

  def visit
    @browser.navigate.to build_url
  end

  def build_url
    #original location for path: HomePage class
    initial_url = self.path
    #initial_url == "http://www.usps.com"
    initial_url.gsub!("usps.com", get_environment)
   end


end