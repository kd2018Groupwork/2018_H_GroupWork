class SearchController < ApplicationController
  def search
  end
  
  #西田: ToDo:保守性低いから後で変えること検討
  def search_result
    if params[:product]
      search_spot_from_product
    else
      search_spot_from_location
    end
  end

  def get_cities
    render partial: 'select_city', locals: {pref_code: params[:pref]}
  end
  
  def search_detail
    @detail = Product.joins(:spots).select("*").where("spots.id" => params[:spot_id])
  end

  private

    def search_spot_from_product
      @product = Spot.search_products(params[:product]) 
      @result  = Spot.find(@product.ids)
      render 'search_result'
    end
    
    #西田: city検索用のコードあとで書く
    def search_spot_from_location
      @result  = Spot.search_pref(params[:pref])
      render 'search_result'
    end

end
