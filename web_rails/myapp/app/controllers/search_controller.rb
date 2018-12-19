class SearchController < ApplicationController
  def search
  end

  def search_result 
  end

  def search_detail
    @detail = Product.joins(:spots).select("*").where("spots.id" => params[:spot_id])
  end
end
