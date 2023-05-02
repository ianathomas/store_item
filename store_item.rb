class Store
  def initialize(item_name, item_color, item_source)
    @item_name = item_name
    @item_color = item_color
    @item_source = item_source
  end

  def item_name
    @item_name
  end

  def item_color
    @item_color
  end

  def item_source
    @item_source
  end

  def item_source=(location)
    @item_source = location
  end
end
  
item1 =Store.new("fancyshirt", "red", "Cuba")
item2 =Store.new("fancyshoes", "blue", "United States")
item3 =Store.new("fancycar", "grey", "Italy")
p item1
p item1.item_name
p item2.item_color
p item3.item_source
p item3.item_source = "Phillipines"