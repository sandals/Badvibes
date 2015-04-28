require "rails_helper"

feature "Pages" do
  scenario "able to visit home page" do
    visit root_path

    expect(current_path).to eq(root_path)
  end
end
