class LocationsController < ApplicationController
  def index
    @book = params[:book]
  end
end
