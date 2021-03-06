# create dummy users
User.delete_all
User.create({name: "Sarah Woods", email: "wow@socool.com", password: "1234", password_confirmation: "1234"})
User.create({name: "David", email: "cool@amazing.com", password: "12345", password_confirmation: "12345"})

# Dropdown to search for restaurants
District.delete_all
districts = ["Kennedy Town", "HKU", "Sai Ying Pun", "Sheung Wan", "Central", "Admiralty", "Wan Chai", "Causeway Bay", "Tin Hau", "Fortress Hill", "North Point", "Quarry Bay", "Tai Koo", "Sai Wan Ho", "Shau Kei Wan", "Chai Wan", "Tsim Sha Tsui", "Mong Kok"]

districts.each do |district|
  District.create(name: district)
end

# Create Restaurant database
# Restaurant.create({name: "", website: "", address: "", description:"", price_range: "", image_url: "", telephone: "", opening_weekday:"", opening_weekend: ""})
Restaurant.delete_all
Restaurant.create({name: "Genki Sushi", website: "www.genkisushi.com.hk", address: "Shop 241, 2/F, Shun Tak Centre, 168-200 Connaught Road Central, Sheung Wan", description:"To bring sushi within the reach of everyone. To introduce this unique Japanese dining experience to the world and to never stop improving and upgrading our skills.", price_range: "$101-$200", image_url: "http://i.imgur.com/WA7UWAA.jpg", telephone: "2540 8929", opening_weekday:"11:30-22:30", opening_weekend: "11:30-22:30", district_id: District.find_by_name("Sheung Wan").id})

Restaurant.create({name: "Itamae Sushi", website: "http://www.itamae.com.hk/", address: "G/F, 44 Soy Street, Mong Kok", description:"Wow not a single branch left in HK Island! What a fall into disgrace", price_range: "$101-$200", image_url: "http://i.imgur.com/qIBykGA.jpg", telephone: "2771 1895", opening_weekday:"11:30-01:30", opening_weekend: "11:30-01:30", district_id: District.find_by_name("Mong Kok").id})

Restaurant.create({name: "Monster Sushi", website: "www.monstersushi.com.hk", address: "Shop A, 16/F, Lee Theatre Plaza, 99 Percival Street, Causeway Bay ", description:"Monster Sushi provides Edo-Mae sushi with ancient techniques of making sauce coating on the fish. Our chefs concoct the representatives of three divisions - nigiri sushi, sushi roll and pressed sushi. We infuse Edo’s essence into the creative sushi, and this trendy sense has captured compliments and support of many patrons all these years.", price_range: "$101-$200", image_url: "http://i.imgur.com/9vnHens.jpg", telephone: "2111 1231", opening_weekday:"11:30-23:30", opening_weekend: "11:30-23:30", district_id: District.find_by_name("Causeway Bay").id})

Restaurant.create({name: "Marketplace", website: "www.marketplacebyjasons.com", address: "LG/F, Nexxus Building, 77 Des Voeux Road Central, Central", description:"Sushi selection is a steal considering its price. Purchase over $45 during lunch hours for a complimentary miso soup", price_range: "$50-$100", image_url: "http://i.imgur.com/aNXnYeh.jpg", telephone: "3104 0652", opening_weekday:"08:00-22:00", opening_weekend: "09:00-22:00", district_id: District.find_by_name("Central").id})

Restaurant.create({name: "Sushi Take Out", website: "none", address: "Shop 2, G/F., 993 King's Road, Quarry Bay ", description:"Sushi takeout at affordable prices", price_range: "Below $50", image_url: "http://i.imgur.com/MJ01870.jpg", telephone: "2516 5228", opening_weekday:"10:30-22:30", opening_weekend: "10:30-22:30", district_id: District.find_by_name("Quarry Bay").id})


Restaurant.create({name: "Sushi One", website: "http://www.sushione.com.hk", address: "G/F, 48 Cameron Road, Tsim Sha Tsui", description:"The “Sushi One” idea originates from one of the best sushi chefs in the world. This Master Chef has a never ending thirst of learning and perfecting the art of sushi making. He traveled from Japan to New York and set afoot in many parts of the world looking for the most unique ingredients to create the best sushi while sharing his experience with many others. We were fortunate enough to meet with him and as he would like us to continue his legacy. ", price_range: "$101-$200", image_url: "http://i.imgur.com/lgV6VvN.jpg", telephone: "3575 9898", opening_weekday:"11:30-22:30", opening_weekend: "11:30-23:00", district_id: District.find_by_name("Tsim Sha Tsui").id})

Restaurant.create({name: "sen-ryo", website: "www.sen-ryo.com.hk", address: "Shop B3-01, B3/F., The Kowloon Hotel, 19-21 Nathan Road, Tsim Sha Tsui", description:"sen-ryo’s authentic flavors and tastes come directly from the traditional tsukiji seafood markets of Japan. sen-ryo designates fish and seafood connoisseurs to select the highest quality products from Japan’s waters – including local favorite, blue-fin tuna – to bring to Hong Kong!", price_range: "$201-$400", image_url: "http://i.imgur.com/8jD41hp.jpg", telephone: "2537 6238", opening_weekday:"11:30-23:30", opening_weekend: "11:30-23:00", district_id: District.find_by_name("Tsim Sha Tsui").id})

Restaurant.create({name: "Mitaki", website: "www.facebook.com/Mitaki-三滝-487665341245880", address: "Shop D2, G/F, Kam Sing Mansion, 151-161 Jaffe Road, Wan Chai ", description:"Yo I live across this little takeout sushi specialist and it's ah-may-zing! Admin-recommended", price_range: "$51-$100", image_url: "http://i.imgur.com/qxZlzoR.jpg", telephone: "2813 1111", opening_weekday:"11:00-22:00", opening_weekend: "11:00-22:00 (Sunday closed)", district_id: District.find_by_name("Wan Chai").id})

Restaurant.create({name: "Wasabi Warriors", website: "www.wasabiwarriors.com.hk/", address: "Shop F, G/F, World Trust Tower, 50 Stanley Street, Central", description:"The Wasabi Warriors are five brothers: Ocean, Porky, Beefy, Chicken and Veggie Warrior. The five young brothers were mentored by their father, who trained them in the ways of the traditional Warrior – to honour the ocean, earth and animals. As the brothers grew, they separated, but with the passing of time they reformed, and now search for Warriors to join them in sustainable, economical and honourable practices to eat good, do good and feel good.", price_range: "$51-$100", image_url: "http://i.imgur.com/fLUY465.jpg", telephone: "2323 1512", opening_weekday:"11:00-20:00", opening_weekend: "11:00-17:00 (Sunday closed)", district_id: District.find_by_name("Central").id})

#Create Comments
#Comment.create({id: content: "Amazing place", restaurant_id: 1, user_id: 1})
Comment.delete_all
Comment.create({content: "Personally for me, the Genki in Tseung Kwan O has better standards than the branches on HK Island. Will you be adding multiple branches of the same restaurant?", restaurant_id: Restaurant.find_by_name("Genki Sushi").id, user_id: User.find_by_name("Sarah Woods").id})

Comment.create({content: "Hi Sarah, I think if you send the admin an email they'd be happy to add it. Their email is on their front page.", restaurant_id: Restaurant.find_by_name("Genki Sushi").id, user_id: User.find_by_name("David").id})

Comment.create({content: "It was my Birthday today and I went to Itamae to celebrate it alone. They had this VIP table for me in the back. I don't know why but the waiters were especially nice to me.", restaurant_id: Restaurant.find_by_name("Itamae Sushi").id, user_id: User.find_by_name("Sarah Woods").id})

Comment.create({content: "you went alone?", restaurant_id: Restaurant.find_by_name("Itamae Sushi").id, user_id: User.find_by_name("David").id})


Comment.create({content: "Came here with boyfriend for a late lunch. He got two texts while we ate. I had a quick glance over his screen and saw the sender's name was Lina Tinder. What should I do?", restaurant_id: Restaurant.find_by_name("Wasabi Warriors").id, user_id: User.find_by_name("Sarah Woods").id})

Comment.create({content: "you need to confront him over this. want me to help you?", restaurant_id: Restaurant.find_by_name("Wasabi Warriors").id, user_id: User.find_by_name("David").id})

Comment.create({content: "No thanks David.", restaurant_id: Restaurant.find_by_name("Wasabi Warriors").id, user_id: User.find_by_name("Sarah Woods").id})
