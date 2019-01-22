class Shop < ApplicationRecord
  mount_uploader :images, ShopImageUploader
end
