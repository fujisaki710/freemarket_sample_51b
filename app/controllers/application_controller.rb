class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_categories

  private

  def production?
    Rails.env.production?
  end  

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :first_name, :first_name_kana, :family_name, :family_name_kana, :birth_year, :birth_month, :birth_day])
  end

  def set_categories
    @categories = Category.all
    @parents = Category.roots
    # @children = @parents.map {|parent| parent.children}
  end

end

