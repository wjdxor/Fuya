class Shop < ApplicationRecord
  belongs_to :market
  has_many :menus
  has_many :shop_reviews
end
