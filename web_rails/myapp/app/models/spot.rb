class Spot < ApplicationRecord
  mount_uploaders :images, SpotimagesUploader
  has_many :favorites, dependent: :destroy
  has_many :ratings, dependent: :destroy
  belongs_to :product

  #validates :product_name, :presence => {:message => '作品名を入力してください'}
  #validates :genre_id, :presence => {:message => 'ジャンルを選択してください'}
  #validates :spot_name, :presence => {:message => 'スポット名を入力してください'}
  #validates :details, :presence => {:message => 'スポットの詳細を入力してください'}
  #validates :prefecture_code, :presence => {:message => '都道府県を選択してください'}
  #validates :address_city, :presence => {:message => '市を入力してください'}

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
