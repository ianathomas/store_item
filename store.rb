require "./item_weight"

class Store
  attr_reader :item_source, :item_color, :item_name, :item_weight
  attr_writer :item_source

  include ItemWeightRelatable

  def initialize(item_stuff)
    @item_name = item_stuff[:item_name]
    @item_color = item_stuff[:item_color]
    @item_source = item_stuff[:item_source]
  end
end