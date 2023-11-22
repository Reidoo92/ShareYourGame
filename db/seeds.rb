# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
 VideoGame.create(user_id: 1, title: "EA Sports FC 24", category: "Sport, Single PLayer, Simulation", description: "EA Sports FC 24 for PC is a football simulation game, the successor to the FIFA games now that the partnership with that authorising body has come to an end.", price: 40, rating: 4)
 VideoGame.create(user_id: 1, title: "Modern Warfar 3", category: "Action, Multiplayer, FPS", description: "The ultranationalist war criminal Vladimir Makarov is extending his grasp across the world causing Task Force 141 to fight like never before.", price: 60, rating: 3)
 VideoGame.create(user_id: 1, title: "NBA 2K24", category: "Sport, Multiplayer, Simulation", description: "Grab your squad and experience the past, present, and future of hoops culture in NBA 2K24. Enjoy loads of pure, unadulterated action and limitless personalized MyPLAYER options in MyCAREER.", price: 40, rating: 3)
p 'seed create'
