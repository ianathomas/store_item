require "./store.rb"
require "./food.rb"

item1 =Store.new(item_name: "fancyshirt", item_color: "red", item_source: "Cuba")
item2 =Store.new(item_name: "fancyshoes", item_color: "blue", item_source: "United States")
item3 =Store.new(item_name: "fancycar", item_color: "grey", item_source: "Italy")

p item1
p item1.item_name
p item2.item_color
p item3.item_source
p item3.item_source = "Phillipines"
