class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'New User Registration - Jungle.com')
  end

  def order_email(order)
      @order = order
      mail(to: @order.email, subject: "Order Confirmation #{@order.id} - Jungle.com")
  end

end
