class Api::V1::BooksController < ActionController::Base
  respond_to :json

  def index
    respond_with Book.all
  end

end
