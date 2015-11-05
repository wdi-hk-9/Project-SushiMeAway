class Rating < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user
  validates_presence_of :restaurant
  validates_numericality_of :value, only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10
end