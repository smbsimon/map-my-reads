class SharesController < ApplicationController
  before_filter :ensure_user
  before_filter :current_user

  def new
  end
end
