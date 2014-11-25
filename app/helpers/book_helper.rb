module BookHelper
  def book_params
    params.require(:book).permit(:title, :city)
  end
end
