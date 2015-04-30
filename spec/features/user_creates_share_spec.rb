require "rails_helper"

feature "User creates share" do
  scenario "with minimum required attributes" do
    potential_share = build(:share)

    visit overview_path(as: create(:user))
    click_link "New Share"

    fill_in "Artist", with: potential_share.artist
    fill_in "Album", with: potential_share.album
    fill_in "Url", with: potential_share.url
    click_button "Post"

    expect(page).to have_content(potential_share.artist)
    expect(page).to have_content(potential_share.album)
    expect(page).to have_css("a[href='#{potential_share.url}']")
  end

  scenario "with album art" do
    potential_share = build(:share)

    visit overview_path(as: create(:user))
    click_link "New Share"

    fill_in "Artist", with: potential_share.artist
    fill_in "Album", with: potential_share.album
    fill_in "Url", with: potential_share.url
    attach_file("Image", "#{Rails.root}/spec/files/image.jpg")
    click_button "Post"

    expect(page).to have_content(potential_share.artist)
    expect(page).to have_content(potential_share.album)
    expect(page).to have_css("a[href='#{potential_share.url}']")
    expect(page).to have_css("img")
  end
end
