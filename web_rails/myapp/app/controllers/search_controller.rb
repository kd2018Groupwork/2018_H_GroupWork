class SearchController < ApplicationController
  def search
  end

  def search_result
    # ToDo:結果のIDが複数あるかどうか確認するメソッド追加
    @product = Spot.search_products(params[:search]) 
    @result  = Spot.find(@product.ids)
=begin  
    @a = 1
    @detail = Spot.find_by_sql(['
      select spots.id , spot_name , prefs.name as pref_name , cities.name as city_name , products.product_name , spot_address , evalution , details , image_path 
      from spots,prefs,cities,products 
      where spots.id = :id
      and spots.prefs_id = prefs.id 
      and spots.cities_id = cities.id 
      and spots.product_id = products.id',{id: @a}]) 
=end  
  end

  def search_detail
    @detail = Spot.find_by_sql(['
      select spots.id ,rate, spot_name , products.product_name , details 
      from spots , products
      where spots.product_id = products.id
      and spots.id = :id', {id: params[:spot_id]}
    ])
=begin  
    @a = 1
    @detail = Spot.find_by_sql(['
      select spots.id , spot_name , prefs.name as pref_name , cities.name as city_name , products.product_name , spot_address , evalution , details , image_path 
      from spots,prefs,cities,products 
      where spots.id = :id
      and spots.prefs_id = prefs.id 
      and spots.cities_id = cities.id 
      and spots.product_id = products.id',{id: params[:spot_id]}])
=end  
  end
end
