module BookHelper
  def book_params
    params.require(:book).permit(:title, :city, :user_id)
  end
end
