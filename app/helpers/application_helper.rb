module ApplicationHelper

  def districts_options
    districts = ["Kennedy Town", "HKU", "Sai Ying Pun", "Sheung Wan", "Central", "Admiralty", "Wan Chai", "Causeway Bay", "Tin Hau", "Fortress Hill", "North Point", "Quarry Bay", "Tai Koo", "Sai Wan Ho", "Shau Kei Wan", "Heng Fa Chuen", "Chai Wan"]

    html = '<select class="form-control">'
    districts.each do |district|
      html += "<option>#{district}</option>"
    end
    html += "</select>"

    html
  end

end
