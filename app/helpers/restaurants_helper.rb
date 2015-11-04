module RestaurantsHelper

  def avgPoints(ratings)
    if ratings.empty?
      return "Not rated"
    else
      return ratings.average(:value).to_i
    end
  end
end
