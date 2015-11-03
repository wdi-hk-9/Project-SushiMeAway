class Restaurant < ActiveRecord::Base
  belongs_to :district

  def website_url
    if website.include? "http://"
      website
    else
      "http://#{website}"
    end
  end
end
