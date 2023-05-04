require "./store"
require "./item_weight.rb"

class Food < Store
  def initialize
    super
    @shelf_life = "7 days"
  end

  def shelf_life
    @shelf_life
  end
end