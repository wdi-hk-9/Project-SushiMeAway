class RatingsRef < ActiveRecord::Migration
  def change
    add_reference :ratings, :restaurant
    add_reference :ratings, :user
  end
end
