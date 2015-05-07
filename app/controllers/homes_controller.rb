class HomesController < ApplicationController
  skip_before_action :require_login

  def show
    if signed_in?
      redirect_to overview_path
    else
      redirect_to sign_up_path
    end
  end
end
