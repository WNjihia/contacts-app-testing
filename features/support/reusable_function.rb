require 'selenium-webdriver'

class ReusableFunction
  def self.scroll_up
    Appium::TouchAction.new.swipe(start_x: 500, start_y: 1200, end_x: 500, end_y: 400, duration: 800).perform
  end

  def self.scroll_to text
    text = %("#{text}")
    args = Appium::Android::scroll_uiselector("new UiSelector().text(#{text})")
    find_element :uiautomator, args
  end
end