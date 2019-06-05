class ItemsController < ApplicationController

  def index
    @items = Item.all.order("id DESC").limit(4)
    @image = Image.all.order("id DESC").limit(4)
    # @items = Item.includes(:image).page(params[:page]).per(4).order("created_at DESC")
  end
end
