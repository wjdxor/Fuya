class Market < ApplicationRecord
  has_many :shops
  has_many :market_reviews
end
