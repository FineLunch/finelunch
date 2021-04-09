require 'faker'

puts " dishes creation ......"

dish_types = DishType.all

dish_types.each do |dish_type|
    5.times do 
        random_price = rand(500..5000)
        random_dish_type_id = dish_type[:id]
        Dish.create!({
            name: Faker::Food.dish,
            description: Faker::Food.description,
            price: random_price,
            picture_url: "http://via.placeholder.com/300",
            dish_type_id: random_dish_type_id
        }); 
        p '.'
    end
    p "#{ dish_type[:name]} dishes created ..."
end



p 'OK.'
p "dishes creation complete ..."