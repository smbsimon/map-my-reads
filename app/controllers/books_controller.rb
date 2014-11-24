class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    redirect_to books_path
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new
    @book.title = params[:book][:title]
    @book.save
    redirect_to new_location_path
  end
end
