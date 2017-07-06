class UpdateRegistrationFields < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :name
      t.string :firstname
      t.string :lastname
    end
  end
end
