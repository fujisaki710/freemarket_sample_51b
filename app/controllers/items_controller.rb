class ItemsController < ApplicationController
  require 'payjp'
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :set_search

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
    @status = '出品中'
    @item = Item.new(item_params)
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
    @serect_category = @item.categories.first
    @price = @item.price
    @fee = ((@price * 1.1) - @item.price).round
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
    end
  end

  def purchase
    @item = Item.find(params[:id])
    card = Card.where(user_id: current_user.id).first
    #Cardテーブルは前回記事で作成、テーブルからpayjpの顧客IDを検索
    if card.blank?
      #登録された情報がない場合にカード登録画面に移動
      redirect_to new_card_path
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      #保管した顧客IDでpayjpから情報取得
      customer = Payjp::Customer.retrieve(card.customer_id)
      #保管したカードIDでpayjpから情報取得、カード情報表示のためインスタンス変数に代入
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end

  def pay
    @item = Item.find(params[:id])
    card = Card.where(user_id: current_user.id).first
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    Payjp::Charge.create(
      :amount => @item.price, #支払金額を入力（itemテーブル等に紐づけても良い）
      :customer => card.customer_id, #顧客ID
      :currency => 'jpy', #日本円
    )
    @item.status = '交渉中'
    @item.save
    redirect_to item_path(params[:id]) #トップ画面に移動
  end

  def done
    @item = Item.find(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:name, :discription, :item_condition, :delivery_fee, :shipping_rule, :prefecture_id, :shipping_date, :price,images:[],brand_attributes: [:id, :name], items_categories_attributes: [:id,:category_id],remove_images:[]).merge(user_id: current_user.id, status: @status)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def search_params
    params.require(:q).permit(:name_cont,:price_gteq,:price_lteq,:item_condition_eq)
  end

  def set_search
    @q = Item.ransack(params[:q])
    @search_items = @q.result(distinct: true)
  end
end
