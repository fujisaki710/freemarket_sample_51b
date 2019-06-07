class ItemsController < ApplicationController

  def index
  end

  def new
    @item = Item.new
  end

  def create
    @status = '出品中'
    @item = Item.create(item_params)
    # binding.pry
  end

  private

  def item_params
    params.require(:item).permit(:name, :discription, :item_condition, :delivery_fee, :shipping_rule, :prefecture_id, :shipping_date, :price,images:[]).merge(user_id: current_user.id, status: @status)
  end

end
