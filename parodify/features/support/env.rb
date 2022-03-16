require "allure-cucumber"
require "capybara"
require "capybara/cucumber"

require_relative "helpers"

World(Helpers)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 15
  config.app_host = "http://parodify.herokuapp.com"
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end
