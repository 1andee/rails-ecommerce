class AddEmailToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :email, :string
  end
end
