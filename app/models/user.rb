class User < ActiveRecord::Base

  has_secure_password
  after_create :email_user

  has_many :reviews

  def email_user
    UserMailer.welcome_email(self).deliver
  end

end
