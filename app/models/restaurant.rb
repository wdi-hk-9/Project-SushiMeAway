class Restaurant < ActiveRecord::Base
  belongs_to :district

  def website_url
    website.include?("http://") ? website : "http://#{website}"
  end
end