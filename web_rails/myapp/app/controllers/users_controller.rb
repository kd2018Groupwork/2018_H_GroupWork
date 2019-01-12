class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "さくれにようこそ！"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "ぷろふぃーるを更新しました"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def fav_show
    #params[]はString型
    if current_user.id === params[:user_id].to_i
      @fav_spot = Spot.joins(:ratings).select("spots.id,spot_name,rate").where(ratings: {user_id: params[:user_id]})
    else
      redirect_to root_path
    end
  end

  def show_spot
    @user = User.find(session[:user_id])
    @user_spot = UserSpot.where('user_id = ?', session[:user_id])
    @spot = Spot.where('id in (?)', @user_spot.select(:spot_id).map(&:spot_id)).order('updated_at DESC')  
  end
  
  private                                                                       

    def user_params
      params.require(:user).permit(
        :user_name, 
        :email,
        :image_name,
        :password, 
        :password_confirmation
      )
    end
end
