class SearchController < ApplicationController
  def search
  end
  
  def search_result
    @result = search_spots(
      params[:product],
      params[:genre],
      params[:pref],
      params[:city]
      )
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

  def auto_complete_product
    product = Product.where(['product_name LIKE ?', "%#{params[:term]}%"]).map(&:product_name)
    render json: product.to_json
  end

  private

    def search_spots(product_name,genre_id,pref_code,city_name)
      spot_product  = search_spot_from_product(product_name,genre_id)
      spot_location = search_spot_from_location(pref_code,city_name)
      spot_product.merge(spot_location)
    end

    def search_spot_from_product(product_name,genre_id)
      product = Spot.search_product_and_genre(product_name,genre_id)
      Spot.where(['product_id IN (?)', product.ids])
    end
    
    def search_spot_from_location(pref_code,city_name)
      Spot.search_pref_and_city(pref_code,city_name)
    end

end
