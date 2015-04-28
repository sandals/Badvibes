require "rails_helper"

describe HomesController do
  it "redirects to join if the visitor is not signed in" do
    get :show

    expect(response).to redirect_to sign_up_path
  end

  it "redirects to overview if the visitor is signed in" do
    sign_in
    get :show

    expect(response).to redirect_to overview_path
  end
end
