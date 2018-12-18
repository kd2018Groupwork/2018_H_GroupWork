class OfferController < ApplicationController
  def index
    if logged_in?
      @offer = Offer.new
    else
      redirect_to root_url
    end
  end

  def confirm
    if logged_in?
      @offer = Offer.new(offer_params)
      if @offer.valid?
        render 'confirm'
      else
        flash.now[:danger] = '入力内容にエラーがあります'
        render 'index'
      end
    else
      redirect_to root_url
    end
  end

  def complete
    if logged_in?
      @offer = Offer.new(offer_params)
      OfferMailer.received_email(@inquiry).deliver
      render 'complete'
    else
      redirect_to root_url
    end
  end

  private
  def offer_params
    params.require(:offer).permit(

    )
  end
end
