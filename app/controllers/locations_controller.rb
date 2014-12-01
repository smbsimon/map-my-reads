class LocationsController < ApplicationController
  before_filter :ensure_user
  before_filter :current_user

  def index
  end
end
