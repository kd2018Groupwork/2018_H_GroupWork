class SearchController < ApplicationController
  def search
  end

  def search_result
  end

  def search_detail
    @a = 1
    @detail = Spot.find_by_sql(['
      select spot_name , prefs.name as pref_name , cities.name as city_name , productes.product_name , spot_address , evalution , details , image_path 
      from spots,prefs,cities,productes 
      where spots.id = :id
      and spots.prefs_id = prefs.id 
      and spots.cities_id = cities.id 
      and spots.product_id = productes.id',{id: @a}])
  end
end
