class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update]

  def index
    @items = Item.all.order("id DESC").limit(4)
    @images = @items[0].images
  end

  def new
    @item = Item.new
    @item.items_categories.build

    # カテゴリーフォーム１
    @parents = Category.roots
    @parentName = @parents.map{|parent|parent.name}
    # カテゴリーフォーム２
    @childrenName0 = @parents[0].children.map{|children|children.name}
    @childrenName1 = @parents[1].children.map{|children|children.name}
    @childrenName2 = @parents[2].children.map{|children|children.name}
    # カテゴリーフォーム３
    @childrenName0_0 = @parents[0].children[0].children.map{|children2|children2.name}
    @childrenName0_1 = @parents[0].children[1].children.map{|children2|children2.name}
    @childrenName1_0 = @parents[1].children[0].children.map{|children2|children2.name}
    @childrenName1_1 = @parents[1].children[1].children.map{|children2|children2.name}
    @childrenName2_0 = @parents[2].children[0].children.map{|children2|children2.name}
    @childrenName2_1 = @parents[2].children[1].children.map{|children2|children2.name}
    # binding.pry
  end

  def create
    @status = '出品中'
    @item = Item.create(item_params)
    # binding.pry
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
    params.require(:item).permit(:name, :discription, :item_condition, :delivery_fee, :shipping_rule, :prefecture_id, :shipping_date, :price,images:[],brand_attributes: [:id, :name], items_categories_attributes: [:id,:category_id]).merge(user_id: current_user.id, status: @status)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
