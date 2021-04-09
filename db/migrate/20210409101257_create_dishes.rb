class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :picture_url
      t.references :dish_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
