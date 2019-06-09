class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update]

  def index
    @items = Item.all.order("id DESC").limit(4)
    # @images = Item.images.all.order("id DESC").limit(4)
  end
  
  def new
    @item = Item.new
  end

  def create
    @status = '出品中'
    @item = Item.create(item_params)
    redirect_to item_path(@item)
  end

  def show
    @images = @item.images
    @goods = Like.where(status: "良い")
    @normals = Like.where(status: "普通")
    @bads = Like.where(status: "悪い")
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit
    end
  end


  private

  def item_params
    params.require(:item).permit(:name, :discription, :item_condition, :delivery_fee, :shipping_rule, :prefecture_id, :shipping_date, :price,images:[]).merge(user_id: current_user.id, status: @status)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
