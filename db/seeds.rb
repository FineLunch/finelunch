# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# FIRST DELELE IF EXIST 
# Subscription.delete_all
# Order.delete_all
# Profile.delete_all
# User.delete_all
# MenuItem.delete_all
# Menu.delete_all
Dish.delete_all
DishType.delete_all 



# Load dish types
load Rails.root.join("db/seeds/dish_types.rb")

# laod dishes
load Rails.root.join("db/seeds/dishes.rb")

# # load Menu
# load Rails.root.join("db/seeds/menus.rb")

# # load Menu Items 
# load Rails.root.join("db/seeds/menu_items.rb")

# # load Users
# load Rails.root.join("db/seeds/users.rb")

# # load Profile
# load Rails.root.join("db/seeds/profiles.rb")

# # load Orders
# load Rails.root.join("db/seeds/orders.rb")

# # load Subscriptions 
# load Rails.root.join("db/seeds/subscriptions.rb")