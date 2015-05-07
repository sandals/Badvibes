require 'rails_helper'

feature 'Visitor creates account' do
  scenario 'with username' do
    visit sign_up_path
    expect(page).to have_content('Username')

    fill_in 'Email', with: 'e@t.co'
    fill_in 'Username', with: 'UniQueUsername'
    fill_in 'Password', with: 'password'
    click_button 'Sign up'

    expect(page).to have_content('UniQueUsername')
  end
end
