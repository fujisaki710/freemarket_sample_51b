class UsersController < ApplicationController
  before_action :set_user

  def show
    @user = User.find(params[:id])

    @q = Item.ransack(params[:q])
    @search_items = @q.result(distinct: true)
  end

  def edit
  end

  def profile
    @q = Item.ransack(params[:q])
    @search_items = @q.result(distinct: true)
  end

  def credit
  end

  def logout
  end

  private

  def set_user
    @user = current_user
  end

end
