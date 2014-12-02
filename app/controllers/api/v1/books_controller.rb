class Api::V1::BooksController < ActionController::Base
  respond_to :json, :xml

  def index
    respond_with Book.all
  end

  def show
    @book = Book.find(params[:id])

    respond_with @book
  end
end
