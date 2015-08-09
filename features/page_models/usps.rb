class USPS < PageActions

  def home_page
    HomePage.new @browser
  end

  def login_page
    LoginPage.new @browser
  end


end