class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end


class Car < Vehicle
  def initialize
    super
    @fuel = "gasoline"
  end

  def fuel
    @fuel
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Car
  def initialize
    super
    @fuel = "muscles"
  end

  def fuel
    @fuel
  end
  
  def ring_bell
    puts "Ring ring!"
  end
end

car1 = Car.new
bike1 = Bike.new

p car1.fuel
p bike1.fuel