require 'selenium-webdriver'
require 'rubygems'

class MobileDriver
  def initialize
    set_capabilities
    driver.start_driver
  end

  def set_capabilities
    Appium::Driver.new(Appium.load_appium_txt file: File.expand_path('') + "/features/support/appium.txt", verbose: true)
    Appium.promote_appium_methods Object
  end
end