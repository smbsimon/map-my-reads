class SharesController < ApplicationController
  before_filter :ensure_user
  before_filter :current_user

  def index
    @title = params[:title]
    @city = params[:city]
  end
end
