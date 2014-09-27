
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