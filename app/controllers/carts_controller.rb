class CartsController < ApplicationController

  before_action :require_login

  def add_item
    product_id = params[:product_id].to_s

    item = cart[product_id] || { "quantity" => 0 }
    item["quantity"] += 1
    cart[product_id] = item
    update_cart cart

    redirect_back(fallback_location: root_path)
  end

  def remove_item
    product_id = params[:product_id].to_s

    item = cart[product_id] || { "quantity" => 1 }
    item["quantity"] -= 1
    cart[product_id] = item
    cart.delete(product_id) if item["quantity"] < 1
    update_cart cart

    redirect_back(fallback_location: root_path)
  end

end
