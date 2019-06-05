class ItemsController < ApplicationController

  def index
    @items = Item.all.order("id DESC").limit(4)
    @image = Image.all.order("id DESC").limit(4)
  end
end
