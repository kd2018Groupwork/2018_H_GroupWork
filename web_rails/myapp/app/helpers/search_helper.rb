module SearchHelper
  def registered_prefs
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

  def select_cities(spots)
    result = [{code: '', name: ''}]
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
