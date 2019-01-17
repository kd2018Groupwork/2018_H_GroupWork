class SpotController < ApplicationController
  def new
    if logged_in?
      @product = Product.new
    else
      redirect_to root_url
    end
  end

  def commit_product
    @product = Product.new(product_params)
    if @product.genre_id.nil?
      flash.now[:danger] = '入力漏れの無いようにしてください'
      redirect_to :add_spot
    else
      if Product.find_by(product_name: @product.product_name)
        session[:product_name] = @product[:product_name]
        redirect_to :reg_spot
      else
        if @product.save
          session[:product_name] = @product[:product_name]
          
          redirect_to :reg_spot
        else
          flash.now[:danger] = '入力漏れの無いようにしてください'
          redirect_to :add_spot
        end
      end
    end
  end

  def create
    if logged_in?
      @p = Product.find_by(product_name: session[:product_name])
      @spot = Spot.new(spot_params)
      
      if Spot.exists?(spot_name: @spot.spot_name)
        flash[:danger] = 'そのスポット名は既に存在しています'
        redirect_to :reg_spot
      else  
        @spot.rate = 0
        @spot.product_id = @p.id
        if @spot.save
          @user_spot = UserSpot.new()
          @user_spot.user_id = session[:user_id]
          @user_spot.spot_id = @spot.id

          @user_spot.save

          User.where('id = ?', @user_spot.user_id).update_all("rating = rating + 1")
          
          session.delete(:product_id)
        
          flash[:success] = "観光地の登録が完了しました!"
          redirect_to show_spot_path(id: session[:user_id])
        else
          flash[:danger] = '入力漏れの無いようにしてください'
          redirect_to :reg_spot
        end
      end
    else
      redirect_to root_url
    end
  end

  def edit
    @spot = Spot.find(params[:spot_id])
    if UserSpot.find_by(spot_id: @spot.id).user_id == session[:user_id] # ユーザアカウントチェック
      @spot = Spot.find(params[:spot_id])
    else
      redirect_to root_url
    end
  end

  def commit
    @spot = Spot.find(params[:spot][:id])
    @spot.review = params[:spot][:review]
    
    # 公開設定
    if params[:spot][:review_flag] # 公開保存
      @spot.review_flag = false
    else # 下書き保存
      @spot.review_flag = true
    end  

    if @spot.save
      flash[:success] = "観光地の詳細を編集しました!"
      redirect_to :complete_spot
    else
    end
  end

  private

    def product_params
      params.require(:product).permit(
        :product_name,
        :genre_id,
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
        :postcode1,
        :postcode2,
        :prefecture_code, 
        :address_city, 
        :address_street, 
        :address_building,
        {images: []})
    end
end
