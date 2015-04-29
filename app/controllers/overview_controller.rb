class OverviewController < ApplicationController
  def index
    @shares = Share.all
  end
end
