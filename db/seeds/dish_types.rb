puts " dish type creation ......"

dishtypes = [{name: "African",extra: 0},{name: "European", extra: 500},{name: "Asiatic", extra:1000}]

dishtypes.each do |dish_type|
    DishType.create!(dish_type)
    p "."
end

p "OK."
p "dish types created"