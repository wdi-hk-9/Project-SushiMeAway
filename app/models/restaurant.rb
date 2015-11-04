class Restaurant < ActiveRecord::Base
  belongs_to :district
  has_many :comments
  has_many :ratings

  def website_url
    website.include?("http://") ? website : "http://#{website}"
  end
end