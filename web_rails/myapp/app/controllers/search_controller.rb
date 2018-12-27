class SearchController < ApplicationController
  def search
  end
  
  #西田: ToDo:保守性低いから後で変えること検討
  def search_result
    if params[:product]
      @result = search_spot_from_product(params[:product], params[:genre])
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
    @comments = User.joins(:comments).select("*").where("comments.spot_id" => params[:spot_id]).order('comments.updated_at DESC')
  end

  private

    def search_spot_from_product(product_name,genre_id)
      product = Spot.search_product_and_genre(product_name,genre_id)
      Spot.where(['product_id IN (?)', product.ids])
    end
    
    def search_spot_from_location(pref_code,city_name)
      Spot.search_pref_and_city(pref_code,city_name)
    end

end
