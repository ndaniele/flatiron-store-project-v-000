class StoreController < ApplicationController

  def index
    @current_cart = current_user.current_cart if user_signed_in?
    @categories = Category.all
    @items = Item.available_items
  end
  
end
