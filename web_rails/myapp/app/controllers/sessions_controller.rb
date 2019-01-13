class SessionsController < ApplicationController
  def new
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      remember user
      redirect_to root_url
    else
      flash.now[:danger] = 'めーるあどれす又は、ぱすわーどが違います'
      render 'new'
    end
  end
end
