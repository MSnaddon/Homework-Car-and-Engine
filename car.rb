

class Car
  attr_reader :speed, :fuel
  def initialize(speed, fuel, engine)
    @speed = speed
    @fuel = fuel
    @engine = engine
  end

  def accelerate()
    @speed += @engine.acceleration
    @fuel -= @engine.fuel_consumption
  end

  def brake()
    if @speed >= 10
      @speed -= 10 
    else
      @speed = 0
    end
  end
end