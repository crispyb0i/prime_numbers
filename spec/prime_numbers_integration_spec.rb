
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
# add own description
describe('prime numbers result path', {:type => :feature}) do
  it('processes the user entry and returns all prime numbers from 1 to their number') do
    visit('/')
    fill_in('prime_form', :with => 7)
    click_button('Send')
    expect(page).to have_content([1,2,3,5,7])
  end
end
