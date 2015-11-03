# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Execute this file and add these stuf to the db with

# rake db:seed

District.delete_all
districts = ["Kennedy Town", "HKU", "Sai Ying Pun", "Sheung Wan", "Central", "Admiralty", "Wan Chai", "Causeway Bay", "Tin Hau", "Fortress Hill", "North Point", "Quarry Bay", "Tai Koo", "Sai Wan Ho", "Shau Kei Wan", "Heng Fa Chuen", "Chai Wan"]

districts.each do |district|
  District.create(name: district)
end

# => Restaurant(id: integer, name: string, website: string, address: string, description: string, price_range: string, image_url: string, telephone: string, created_at: datetime, updated_at: datetime)
#

# Restaurant.create({name: "sushi O"})
