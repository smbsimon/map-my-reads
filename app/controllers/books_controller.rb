class BooksController < ApplicationController
  respond_to :html, :json
  before_filter :ensure_user
  before_filter :current_user

  def index
    @books = current_user.books
    @cities = @books.pluck(:city).uniq
    respond_with @books
  end

  def show
    redirect_to books_path
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params.merge(user_id: current_user.id))
    @book.save
    redirect_to shares_path(title: @book.title, city: @book.city)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :city, :user_id)
  end

end
