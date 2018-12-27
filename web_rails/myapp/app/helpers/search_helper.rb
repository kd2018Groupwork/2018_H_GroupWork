module SearchHelper
#西田：　重複コードたくさんあるので後できれいにするかも

  def select_prefs
    result = [{code: 99, name: '全国'}]
    Spot.all.each do |spt|
      result.append(
        {
          code: spt.prefecture_code,
          name: JpPrefecture::Prefecture.find(
                  code: spt.prefecture_code
                ).name
        }
      )
    end
    result.map{|hash| [hash[:code], hash[:name]]}.uniq
  end

  def select_genres
    result = [{code: nil , name: 'ジャンル'},{code: nil, name: 'すべて'}]
    Genre.all.each do |gnr|
      result.append(
        {
          code: gnr.id,
          name: gnr.genre_name
        }
      )
    end
    result.map{|hash| [hash[:code], hash[:name]]}.uniq
  end


  def select_cities(spots)
    result = [{code: nil, name: 'すべて'}]
    if spots.select('prefecture_code').distinct.length == 1
      spots.each do |spt|
        result.append(
          {
            code: spt.address_city,
            name: spt.address_city
          }
        )
      end
    end
    result.map{|hash| [hash[:code], hash[:name]]}.uniq
  end
end
