class Store
  attr_reader :item_source, :item_color, :item_name
  attr_writer :item_source


  def initialize(item_stuff)
    @item_name = item_stuff[:item_name]
    @item_color = item_stuff[:item_color]
    @item_source = item_stuff[:item_source]
  end

  # def item_name
  #   @item_name
  # end

  # def item_color
  #   @item_color
  # end

  # def item_source
  #   @item_source
  # end

  # def item_source=(location)
  #   @item_source = location
  # end
end
  
item1 =Store.new(item_name: "fancyshirt", item_color: "red", item_source: "Cuba")
item2 =Store.new(item_name: "fancyshoes", item_color: "blue", item_source: "United States")
item3 =Store.new(item_name: "fancycar", item_color: "grey", item_source: "Italy")
p item1
p item1.item_name
p item2.item_color
p item3.item_source
p item3.item_source = "Phillipines"