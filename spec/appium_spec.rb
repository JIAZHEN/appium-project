require 'spec_helper'

describe 'UICatalog smoke test' do
  it 'should detect the nav bar' do
    home_page = Pages::Home.new
    expect(home_page.navigation_bars.first).not_to be_nil
    home_page.buttons_opt.click
    expect(home_page).not_to have_buttons_opt
  end
end
