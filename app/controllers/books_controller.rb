class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def show
    @books = Book.all
  end

  def create
    redirect_to new_location_path
  end
end
