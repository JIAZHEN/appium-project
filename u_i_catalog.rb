# THIS TEST
# ---------
# This test demonstrates the many, many things you can do with Appium.
#
# It relies on the setup in simple_test.rb, which is also a good starting 
# point to make sure you can run any tests at all.
#
# run using:
#
# bundle exec rspec u_i_catalog.rb
#
# run only a tagged group:
#
# bundle exec rspec --tag one u_i_catalog.rb
#

require 'rubygems'
require 'rspec'
require 'appium_lib'
require 'net/http'

RSpec.configure do |c|
  c.treat_symbols_as_metadata_keys_with_true_values = true
end

APP_PATH = './UICatalog.app.zip'

def desired_caps
  {
    caps: {
      platformName: 'iOS',
      deviceName:  'iPhone Simulator',
      versionNumber:  '7.1',
      app: APP_PATH
    },
    appium_lib: {
      sauce_username: nil, # don't run on sauce
      sauce_access_key: nil,
      wait: 10,
    }
  }
end

describe 'UI Catalog' do
  before(:all) do
    Appium::Driver.new(desired_caps).start_driver
    Appium.promote_appium_methods RSpec::Core::ExampleGroup
  end

  after(:all) do
    driver_quit
  end

  describe 'An Element' do
    subject { text_exact 'Buttons' }

    before { text('Buttons, Various uses of UIButton').click }
    it { should_not be nil }
  end
end
