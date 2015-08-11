require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the task path', {:type => :feature}) do
  it('process the user entry and adds it to the task list') do
    visit('/')
    fill_in('description', :with => 'watch Doctor Who')
    click_button('Add task')
    expect(page).to have_content('The task has been successfully submitted!')
  end
end
