class CategoriesController < ApplicationController

  def index 
    @current_cart = current_user.current_cart if user_signed_in?
    @categories = Category.all 
  end

  def show
    @current_cart = current_user.current_cart if user_signed_in?
    @category = Category.find(params[:id])
  end

end
