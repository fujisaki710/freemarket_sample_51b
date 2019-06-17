class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all.order("id DESC").limit(4)
    @items2 = Item.all.order("id ASC").limit(4)

    @q = Item.ransack(params[:q])
    @search_items = @q.result(distinct: true)
  end

  def search
    @q = Item.search(search_params)
    @search_items = @q.result(distinct: true)
    @search_name = params[:q]['name_cont']
  end

  def new
    @item = Item.new
    @item.items_categories.build
  end

  def create
    @item = Item.new(item_params)
    @status = '出品中'
    if @item.save
      redirect_to item_path(@item)
    else
      flash.now[:alert] = "入力されていない項目があります"
      render action: :new
    end
  end

  def destroy
    if @item.user_id == current_user.id
      @item.destroy
      redirect_to root_path
    end
  end

  def show
    @images = @item.images
    @goods = Like.where(status: "良い")
    @normals = Like.where(status: "普通")
    @bads = Like.where(status: "悪い")
    @category = @item.categories.first

    @q = Item.ransack(params[:q])
    @search_items = @q.result(distinct: true)
  end

  def edit
    @item = Item.find(params[:id])
    @serect_category = @item.categories.first
    @price = @item.price
    @fee = ((@price * 1.1) - @item.price).round
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
    end
  end


  private

  def item_params
    params.require(:item).permit(:name, :discription, :item_condition, :delivery_fee, :shipping_rule, :prefecture_id, :shipping_date, :price,images:[],brand_attributes: [:id, :name], items_categories_attributes: [:id,:category_id]).merge(user_id: current_user.id, status: @status)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def search_params
    params.require(:q).permit(:name_cont,:price_gteq,:price_lteq,:item_condition_eq)
  end
end
