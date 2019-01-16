module SearchHelper
#西田：　重複コードたくさんあるので後できれいにするかも

  def select_prefs
    result = []
    checked_spot = Spot.where('review_flag = ?',true)
    checked_spot.each do |spt|
      result.append(
        {
          value: spt.prefecture_code,
           name: JpPrefecture::Prefecture.find(
                  code: spt.prefecture_code
                ).name
        }
      )
    end
    [[99, '全国']]+result.map do |hash|
      [hash[:value], hash[:name]]
    end.uniq.sort
  end

  def select_genres
    result = []
    Genre.all.each do |gnr|
      result.append(
        {
          value: gnr.id,
           name: gnr.genre_name
        }
      )
    end
    [[nil,'すべて']]+result.map do |hash|
      [hash[:value], hash[:name]]
    end.uniq.sort
  end


  def select_cities(spots)
    result = []
    if spots.select('prefecture_code').distinct.length == 1
      spots.each do |spt|
        result.append(
          {
            value: spt.address_city,
             name: spt.address_city
          }
        )
      end
    end
    [[nil,'すべて']]+result.map do |hash|
      [hash[:value], hash[:name]]
    end.uniq.sort
  end

  #西田：　本当はcontrolerで取りたかったが
  #　　　メソッド肥大化するのでここに書く
  def fetch_product_name(result)
    product_ids = result.select(:product_id).map(&:product_id)
    Product.where(
      'id in (?)',product_ids
      ).select(:product_name).map(&:product_name)
  end

end