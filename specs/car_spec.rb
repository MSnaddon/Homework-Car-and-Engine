require ("minitest/autorun")
require ("minitest/rg")
require_relative("../car")
require_relative("../engines")

class CarTest < Minitest::Test
  def setup
    @car_engine = Engine.new(10,5)
    @supercar_engine = Engine.new(25,10)
    @car = Car.new(0,100,@car_engine)
    @fast_car = Car.new(50,45, @supercar_engine)
  end

  def test_car_has_fuel
    assert_equal(100, @car.fuel)
  end
  def test_car_has_speed
    assert_equal(0,@car.speed)
  end
  def test_car_accelerate
    @car.accelerate()
    assert_equal(10,@car.speed)
    assert_equal(95,@car.fuel)
  end

  def test_car_brake
    @car.brake
    @fast_car.brake
    assert_equal(40,@fast_car.speed)
    assert_equal(0,@car.speed)
  end
end

