class Vehicle
  def engine
    "Sounds like: "
  end
end

class Car < Vehicle
  def engine
    super + "VROOM VROOM!"
  end
end

honda = Vehicle.new
honda.engine      # => "Hello! from GoodDog class"
