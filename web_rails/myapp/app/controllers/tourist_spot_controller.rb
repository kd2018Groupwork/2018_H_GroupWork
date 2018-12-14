class TouristSpotController < ApplicationController
  def new
    @producte = Producte.new
  end

  def commit_product
    @product = Producte.new(product_params)
    @product.save!
    session[:product_name] = @product[:product_name]

    redirect_to :reg_spot
  end

  def create
    @p = Producte.find_by(product_name: session[:product_name])
    @spot = Spot.new(spot_params)
    @spot.evalution = 0
    @spot.product_id = @p.id
    @spot.user_id = session[:user_id] # sessionからuser_idを取り出す
    @spot.save!
    session.delete(:product_id)
    
    flash[:success] = "観光地の登録が完了しました!"
    redirect_to :complete_spot
  rescue  
    render 'new'
  end

  private                                                                       

    def spot_params
      params.require(:spot).permit(
        :spot_name,
        :product_id,
        :prefs_id,
        :cities_id,
        :spot_address,
        :evalution,
        :user_id,
        :details,
        :image_path,
      )
    end

    def product_params
      params.require(:producte).permit(
        :product_name,
      )
    end

end
