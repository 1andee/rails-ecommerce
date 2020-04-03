class AddCategoryIdToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :category, index: true, foreign_key: true
  end
end
