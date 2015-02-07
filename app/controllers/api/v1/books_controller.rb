class Api::V1::BooksController < ActionController::Base
  respond_to :json

  def index
    render json: { reading_locations: print_book_details }
  end


  private

  def print_book_details
    Book.all.map do |book|
      {
        'book' => book.title,
        'city' => book.city,
      }
    end
  end

end
