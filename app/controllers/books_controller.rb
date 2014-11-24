class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @books = Book.all
  end

  def show
    redirect_to books_path
  end

  def create
    redirect_to new_location_path
  end
end
