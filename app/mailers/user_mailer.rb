class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.order_received.subject
  #
  def order_received(order)
    @order=order
  
    @greeting = "Hi"

    mail to: "sriharsha.dumala@gmail.com"
  end
end
