class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  has_one :like
  has_many :images, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :items_categories
  has_many :categories, through: :items_categories
  belongs_to :brand
  belongs_to :user
end
