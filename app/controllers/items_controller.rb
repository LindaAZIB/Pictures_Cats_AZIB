class ItemsController < ApplicationController


  def index
    @items = Item.all
    
  end

  def show
    @item_searched = Item.find(params[:id])
  
  end
 
  def update
  end

  def cart
    if user_signed_in?
      @cartlength = current_user.cart.items.length
      c = 0
      current_user.cart.items.each do |item|
        c += item.price
      end
      @cartprice = c
    else
      redirect_back(fallback_location: items_path)
      flash[:danger] = "You must be logged in to access this section"
    end
  end

  def new
    @item=Item.new
  end

  def edit
    @item=Item.find(params[:id])
  end

  def create
  end
end
