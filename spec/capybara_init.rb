require 'appium_capybara'
require 'site_prism'

Capybara.register_driver(:appium) do |app|
  opts = Appium.load_appium_txt file: File.join(Dir.pwd, 'appium.txt')
  Appium::Capybara::Driver.new app, opts
end

Capybara.default_driver = :appium

capy_driver = Capybara.current_session.driver
capy_driver.browser

