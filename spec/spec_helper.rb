require_relative 'capybara_init'
# pages
require_relative '../lib/pages/home_page'

RSpec.configure do |config|
  config.after(:each) do |result|
    Capybara.current_session.driver.quit
  end
end
