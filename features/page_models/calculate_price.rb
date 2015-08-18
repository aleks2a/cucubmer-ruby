class CalculatePrice < PageActions

  def zip_code_look_up_link
    puts @browser.find_element(:id, "ctl00_ContentPlaceHolder1_HyperLink2")
  end

  def from_zip_field
    @browser.find_element(:xpath, "/html/body/form/div[3]/div[2]/div/div[2]/div[3]/div/table/tbody/tr[1]/td[2]/input")
  end

  def post_office_locator_link
    @browser.find_element(:xpath, "//a[@href='https://www.usps.com/locator/welcome.htm']")
  end

end