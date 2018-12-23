class SearchController < ApplicationController
  def search
  end
  
  def search_result
    #西田: ToDo:結果のIDが複数あるかどうか確認するメソッド追加
    search_from_product_name
  end
  
  def search_detail
    @detail = Product.joins(:spots).select("*").where("spots.id" => params[:spot_id])
  end

  private

  def search_from_product_name
    @product = Spot.search_products(params[:search]) 
    @result  = Spot.find(@product.ids)
  end
  
end
