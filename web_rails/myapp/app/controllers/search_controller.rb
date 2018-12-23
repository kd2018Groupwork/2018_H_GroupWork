class SearchController < ApplicationController
  def search
  end
  
  def search_result
    #西田: ToDo:結果のIDが複数あるかどうか確認するメソッド追加
    @product = Spot.search_products(params[:search]) 
    @result  = Spot.find(@product.ids)
  end
  
  def search_detail
    @detail = Product.joins(:spots).select("*").where("spots.id" => params[:spot_id])
  end
end
