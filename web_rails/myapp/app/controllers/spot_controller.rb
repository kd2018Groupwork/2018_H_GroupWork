class SpotController < ApplicationController
  def new
    @producte = Producte.new
  end

  def commit_product
    @product = Producte.new(product_params)
    if @product.save
      session[:product_name] = @product[:product_name]
      
      redirect_to :reg_spot
    else
      flash.now[:danger] = 'さくひんの名前を入力してください'
      redirect_to :add_spot
    end
  end

  def create
    @p = Producte.find_by(product_name: session[:product_name])
    @spot = Spot.new(spot_params)
    @spot.evalution = 0
    @spot.product_id = @p.id
    @spot.user_id = session[:user_id] # sessionからuser_idを取り出す
    if @spot.save
      session.delete(:product_id)
    
      flash[:success] = "観光地の登録が完了しました!"
      redirect_to :complete_spot
    else
      flash[:danger] = 'さくひんの名前を入力してください'
      redirect_to :add_spot
    end
  end


  private                                                                       

    def product_params
      params.require(:producte).permit(
        :product_name,
      )
    end

    def spot_params
      params.require(:spot).permit(
        :spot_name,
        :product_id,
        :evalution,
        :user_id,
        :details,
        :image_path,
        :postcode,
        :prefecture_code, 
        :address_city, 
        :address_street, 
        :address_building)
    end
end
