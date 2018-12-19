class OfferMailer < ActionMailer::Base
  default from: "example@example.com"
  default to: "example@example.com"
 
  def received_email(offer)
    @offer = offer
    mail(:subject => 'お問い合わせを承りました')
  end
 
end
