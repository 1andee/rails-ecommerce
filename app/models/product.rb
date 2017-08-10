class Product < ActiveRecord::Base

  monetize :price_cents, numericality: true
  mount_uploader :image, ProductImageUploader

  belongs_to :category
  has_many :reviews, -> { order(created_at: :desc) }

  validates_presence_of :name, :price, :quantity, :category


end
