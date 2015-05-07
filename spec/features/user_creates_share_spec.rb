require 'rails_helper'

feature 'User creates share' do
  scenario 'with minimum required attributes' do
    potential_share = build(:share)

    visit overview_path(as: create(:user))
    click_link 'New Share'

    share_form(potential_share) do
      click_button 'Post'
    end

    expect_page_to_have_share(potential_share)
  end

  scenario 'with album art' do
    potential_share = build(:share)

    visit overview_path(as: create(:user))
    click_link 'New Share'

    share_form(potential_share) do
      attach_file('Image', "#{Rails.root}/spec/files/image.jpg")
      click_button 'Post'
    end

    expect_page_to_have_share(potential_share)
    expect(page).to have_css('img')
  end
end
