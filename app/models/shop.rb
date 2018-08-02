class Shop < ApplicationRecord
  belongs_to :market
  has_many :menus
end
