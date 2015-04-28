require "rails_helper"

feature "Visitor creates account" do
  scenario "and will be redirected to overview" do
    visit root_path
    expect_user_to_be_signed_out

    sign_up_with("test@example.com", "password")
    expect(page).to have_content("Overview")
  end
end
