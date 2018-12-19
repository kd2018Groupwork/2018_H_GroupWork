class Product < ApplicationRecord
  #has_many  :spots
  validates :product_name, presence: true
end
