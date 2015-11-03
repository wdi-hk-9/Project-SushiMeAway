class AddDistrictToRestaurants < ActiveRecord::Migration
  def change
    add_reference :restaurants, :district
  end
end
