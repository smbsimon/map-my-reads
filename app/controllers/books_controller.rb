class BooksController < ApplicationController
  include BookHelper
  before_filter :ensure_user
  before_filter :current_user

  def index
    @books = Book.all
    @cities = @books.pluck(:city).uniq
  end

  def show
    redirect_to books_path
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save

    redirect_to new_share_path
  end

end
