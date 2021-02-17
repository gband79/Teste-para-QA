require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "allure-cucumber" 
require "fileutils"
require "capybara/rspec"
require "faker"
require "pry"


FileUtils.rm_f(Dir.glob("logs/*.json"))
FileUtils.rm_f(Dir.glob("logs/*.png"))

BROWSER = ENV['browser']

Capybara.register_driver :selenium do |app|
    args = if BROWSER.eql?('chrome')
             ['--start-fullscreen']
           else
             ['--headless --no-default-browser-check']
           end
  
    Capybara::Selenium::Driver.new(app, browser: :chrome, args: args)
  end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = "https://opentdb.com/"
    config.default_max_wait_time = 5
end

CUCUMBER_PUBLISH_ENABLED=true