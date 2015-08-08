class PageActions
  attr_reader :browser
  # attr_writer :browser
  # attr_accessor :browser

  def initialize browser
    @browser = browser
  end

  def wait_for_elements
    puts "Uhh! finally found what I was looking for!"
  end
end

class USPS < PageActions

  def zip_code_page
    ZipCodePage.new @browser
  end

  def login_page
    LoginPage.new @browser
  end
end

class ZipCodePage < PageActions
  def select_state_dropdown
    puts "Aha! found dropdown and #{@browser}"
  end
end

class LoginPage < PageActions
  def password_field
    puts "Aha! found password input field and #{@browser}"
  end
end


browser = "I\'m ready to find,type, and click!"

usps = USPS.new browser

usps.zip_code_page.select_state_dropdown
usps.login_page.password_field

usps.zip_code_page.wait_for_elements
usps.login_page.wait_for_elements

usps.wait_for_elements

puts usps.browser


