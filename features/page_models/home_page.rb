class HomePage < PageActions

  def path
    "http://www.usps.com"
  end

  def login_button
    @browser.find_element(:id, "anchor-login")
  end

  def calculate_price
    @browser.find_element(:xpath, ("//a[@class='quick-tools--link quick-tools--calcprice' and text() = \"Calculate a Price\"]"))
  end

end