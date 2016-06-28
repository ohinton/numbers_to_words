require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the numbers to words path', {:type => :feature}) do
  it('processes the user entry and returns it as words') do
    visit('/')
    fill_in('number', :with => '12345')
    click_button('Show me the words!')
    expect(page).to have_content('twelve thousand three hundred forty five')
  end
end
