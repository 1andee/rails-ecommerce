class User < ActiveRecord::Base

  has_secure_password

  after_create :email_user

  def email_user
    UserMailer.welcome_email(self).deliver
  end

end
