class Order < ActiveRecord::Base

  belongs_to :user
  has_many :line_items
  validates :stripe_charge_id, presence: true
  monetize :total_cents, numericality: true

  after_create :email_user

  def email_user
    UserMailer.order_email(self).deliver
  end

end
