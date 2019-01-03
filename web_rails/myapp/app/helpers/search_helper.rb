module SearchHelper
#西田：　重複コードたくさんあるので後できれいにするかも

  def select_prefs
    result = []
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
    [[99, '全国']]+result.map do |hash|
      [hash[:code], hash[:name]]
    end.uniq.sort
  end

  def select_genres
    result = []
    Genre.all.each do |gnr|
      result.append(
        {
          code: gnr.id,
          name: gnr.genre_name
        }
      )
    end
    [[nil,'すべて']]+result.map do |hash|
      [hash[:code], hash[:name]]
    end.uniq.sort
  end


  def select_cities(spots)
    result = []
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
    [[nil,'すべて']]+result.map do |hash|
      [hash[:code], hash[:name]]
    end.uniq.sort
  end
end
