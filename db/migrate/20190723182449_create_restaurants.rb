class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.text :name
      t.text :address
      t.integer :phone_number
      t.text :category

      t.timestamps
    end
  end
end
