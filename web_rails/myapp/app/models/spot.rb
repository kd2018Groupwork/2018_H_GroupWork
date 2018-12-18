class Spot < ApplicationRecord
  mount_uploaders :images, ImagesUploader
  has_many :favorites, dependent: :destroy

  validates :spot_name, presence: true
  validates :details, presence: true
  validates :prefecture_code, presence: true
  validates :address_city, presence: true

  include JpPrefecture
  jp_prefecture :prefecture_code
  
  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end
  
  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end
end
