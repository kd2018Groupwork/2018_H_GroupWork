module SearchHelper
#西田：　重複コードたくさんあるので後できれいにするかも
  def fetch_all_genres
    @genres ||= Genre.all
  end

  def fetch_all_public_spots
    @public_spots ||= Spot.where(
      'review_flag = ?',true
      )
  end

  def select_prefs
    result = []
    public_spots_all = fetch_all_public_spots
    public_spots_all.each do |spt|
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
    genre_all = fetch_all_genres
    genre_all.each do |gnr|
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

end