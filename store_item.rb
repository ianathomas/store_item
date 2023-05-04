class Store
  attr_reader :item_source, :item_color, :item_name, :item_weight
  attr_writer :item_source

  def initialize(item_stuff)
    @item_name = item_stuff[:item_name]
    @item_color = item_stuff[:item_color]
    @item_source = item_stuff[:item_source]
  end

module ItemWeightRelatable
  def item_weight
    @item_weight
  end

end

class Food < Store
  include ItemWeightRelatable
  def initialize
    super
    @shelf_life = "7 days"
  end

  def shelf_life
    @shelf_life
  end
end
  
item1 =Store.new(item_name: "fancyshirt", item_color: "red", item_source: "Cuba", item_weight: 1)
item2 =Store.new(item_name: "fancyshoes", item_color: "blue", item_source: "United States", item_weight: 5)
item3 =Store.new(item_name: "fancycar", item_color: "grey", item_source: "Italy", item_weight: 100)

p item1
p item1.item_name
p item2.item_color
p item3.item_source
p item3.item_source = "Phillipines"
