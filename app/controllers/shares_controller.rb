class SharesController < ApplicationController
  def new
    @share = Share.new
  end

  def create
    share = current_user.shares.new(share_params)

    redirect_to overview_path if share.save
  end

  private

  def share_params
    params.require(:share).permit(:artist, :album, :url, :image)
  end
end
