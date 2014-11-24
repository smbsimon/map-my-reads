module BookHelper
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
