class UsersController < ApplicationController
  before_action :set_user, :set_search

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def profile
  end

  def credit
  end

  def logout
  end

  private

  def set_user
    @user = current_user
  end

  def set_search
    @q = Item.ransack(params[:q])
    @search_items = @q.result(distinct: true)
  end

end
