class UpdateUserProfile < ActiveRecord::Migration[6.0]
  change_table :users do |t|
    t.string :firstname
    t.string :lastname
    t.string :phone_number
    t.string :address
    t.text :bio
  end
end
