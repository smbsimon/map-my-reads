class BooksController < ApplicationController
  def new
  end

  def show
    @books = Book.all
  end
end
