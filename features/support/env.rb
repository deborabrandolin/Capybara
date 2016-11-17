require 'rspec'
require 'selenium/webdriver'
require 'capybara/dsl'
require 'yaml'

DEFAULT_DATA = (YAML.load_file('./features/fixtures/default_data.yml'))

Capybara.configure do |config|
 config.current_driver = :selenium
 config.default_max_wait_time = 3
 Capybara.page.driver.browser.manage.window.maximize
end
