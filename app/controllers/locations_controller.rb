class LocationsController < ApplicationController
  def new
    @book = params[:book]
  end
end
