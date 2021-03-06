require 'rspec'
require 'yaml'
require 'cucumber'
require 'selenium/webdriver'
require 'capybara/dsl'
require 'page-object'
require 'capybara/dsl'
require 'site_prism'
require 'pry'

include Capybara

Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
	config.current_driver = :selenium
	config.default_max_wait_time = 3
	Capybara.page.driver.browser.manage.window
end
