class Shop < ApplicationRecord
  mount_uploader :images, ShopImageUploader

  def self.fetch_sponsor(spot_id)
    self.where('spot_id = ?',spot_id)
  end
end
