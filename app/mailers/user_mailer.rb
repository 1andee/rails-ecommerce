class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/login'
    mail(to: @user.email, subject: 'New User Registration - Jungle.com')
  end

  def order_email(order)
      @order = order
      mail(to: @order.email, subject: 'Order Confirmation #{@order.id} - Jungle.com')
  end

end
