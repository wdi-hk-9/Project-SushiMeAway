class Restaurant < ActiveRecord::Base
  belongs_to :district
  has_many :comments

  def website_url
    website.include?("http://") ? website : "http://#{website}"
  end
end