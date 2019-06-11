class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  has_many_attached :images, dependent: :destroy
  has_one :like
  has_many :items_categories
  has_many :categories, through: :items_categories
  belongs_to :brand,optional: true
  belongs_to :user
  # 現状はコメント機能の実装を行わないため、コメントアウトしております
  # has_many :comments, dependent: :destroy
end
