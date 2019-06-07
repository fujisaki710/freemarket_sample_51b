class ItemsController < ApplicationController

  def index
    @items = Item.all.order("id DESC").limit(4)
    @image = Image.all.order("id DESC").limit(4)
  end
  
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
  end

  def show
    @items = Item.find(params[:id])
    @images = @items.images
    @good = Like.where(status: "良い")
    @normal = Like.where(status: "普通")
    @bad = Like.where(status: "悪い")
  end

  private

  def item_params
    params.require(:item).permit(:name, :discription, :item_condition, :delivery_fee, :shipping_rule, :shipping_area, :shipping_date, :price).merge(user_id: current_user.id)
  end
end
