class Api::V1::BooksController < ActionController::Base
  respond_to :json
  before_filter :ensure_user
  before_filter :current_user


  def index
    respond_with Book.all
  end


  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def ensure_user
    redirect_to root_url if current_user.nil?
  end

  helper_method :current_user
  helper_method :ensure_user


end
