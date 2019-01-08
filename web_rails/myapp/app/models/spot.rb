class Spot < ApplicationRecord
  mount_uploaders :images, SpotimagesUploader
  has_many :favorites, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :user_spots, dependent: :destroy
  belongs_to :product

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


#西田: -----検索用-----

  def self.search_product(product_name)
    if product_name
      Product.where(['product_name LIKE ?', "%#{product_name}%"])
    else
      Product.all
    end
  end

  def self.search_product_and_genre(product_name,genre_id)
    if !genre_id.blank?
      Product.where(['product_name LIKE ? AND genre_id = ?',"%#{product_name}%", "#{genre_id}"])
    else
      self.search_product(product_name)
    end
  end

  def self.search_pref(pref_code)
    if !!self.find_by(prefecture_code: pref_code)
      self.where(['prefecture_code = ?', "#{pref_code}"])
    else
      self.all
    end
  end

  def self.search_pref_and_city(pref_code,city_name)
    if !city_name.blank?
      self.where(['prefecture_code = ? AND address_city LIKE ?', "#{pref_code}", "%#{city_name}%"])
    else
      self.search_pref(pref_code)
    end
  end

end
