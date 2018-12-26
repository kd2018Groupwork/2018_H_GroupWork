class SearchController < ApplicationController
  def search
  end
  
  #西田: ToDo:保守性低いから後で変えること検討
  def search_result
    if params[:product]
      @result = search_spot_from_product(params[:product])
    else
      @result = search_spot_from_location(params[:pref],params[:city])
    end
  end

  def get_cities
    result = Spot.search_pref(params[:pref])
    render partial: 'select_city', locals: { spots: result }
  end
  
  def search_detail
    @detail = Product.joins(:spots).select("*").where("spots.id" => params[:spot_id])
    @comment = Comment.new
    @comments = Comment.where(spot_id:params[:spot_id])
  end

  private

    def search_spot_from_product(product_name)
      product = Spot.search_products(product_name)
      Spot.find(product.ids)
    end
    
    def search_spot_from_location(pref_code,city_name='')
      Spot.search_city(pref_code,city_name)
    end

end
