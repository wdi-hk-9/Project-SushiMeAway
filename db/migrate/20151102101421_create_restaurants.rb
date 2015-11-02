class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :website
      t.string :address
      t.string :description
      t.string :price_range
      t.string :image_url
      t.string :telephone

      t.timestamps null: false
    end
  end
end
