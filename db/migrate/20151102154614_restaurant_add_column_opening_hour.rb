class RestaurantAddColumnOpeningHour < ActiveRecord::Migration
  def change
    add_column :restaurants, :opening_weekday, :string
    add_column :restaurants, :opening_weekend, :string
  end
end
