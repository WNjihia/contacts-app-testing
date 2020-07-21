#ruby frameworks to require
require 'rspec/expectations'
require 'appium_lib'
require 'cucumber/core/ast'
require 'require_all'
require 'rubygems'
require_all 'test_data'
require_all 'features/screens'
require 'yaml'
require 'selenium-webdriver'

Before do |scenario|
  MobileDriver.new
end

After do |scenario|
  driver.quit_driver
end