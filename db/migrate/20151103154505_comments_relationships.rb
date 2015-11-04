class CommentsRelationships < ActiveRecord::Migration
  def change
    add_reference :comments, :restaurant
  end
end
