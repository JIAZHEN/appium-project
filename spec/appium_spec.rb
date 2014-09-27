require_relative 'spec_helper'

describe 'UICatalog smoke test' do
  it 'should detect the nav bar' do
    home_page = Pages::Home.new
    expect(home_page.navigation_bar.first).not_to be_nil
  end
end
