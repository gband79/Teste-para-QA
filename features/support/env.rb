require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "allure-cucumber" 
require "fileutils"
require "capybara/rspec"
require "faker"

FileUtils.rm_f(Dir.glob("logs/*.json"))
FileUtils.rm_f(Dir.glob("logs/*.png"))



Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end

CUCUMBER_PUBLISH_ENABLED=true