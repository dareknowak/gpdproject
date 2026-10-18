require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.register_driver :selenium_chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  driver_path = ENV['CHROMEDRIVER_PATH']
  service = driver_path ? Selenium::WebDriver::Service.chrome(path: driver_path) : Selenium::WebDriver::Service.chrome
  Capybara::Selenium::Driver.new(app, browser: :chrome, capabilities: options, service: service)
end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
end

World(Capybara)
