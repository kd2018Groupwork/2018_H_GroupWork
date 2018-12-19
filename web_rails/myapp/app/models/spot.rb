class Spot < ApplicationRecord
  mount_uploaders :images, ImagesUploader
  has_many :favorites, dependent: :destroy
  has_many :ratings, dependent: :destroy
#  belongs_to :product

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

  #検索用
  def self.search_products(search)
    if search
      @product = Product.where(['product_name LIKE ?', "%#{search}%"])
    else
      Product.all
    end
  end

end
