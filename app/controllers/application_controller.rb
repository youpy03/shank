class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :post_search

  private
  def post_search
  	@q = Post.search(params[:q])
  end
end
