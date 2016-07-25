require ("minitest/autorun")
require ("minitest/rg")
require_relative("../engines")

class TestEngine < Minitest::Test
  def setup
    @pedal = Engine.new(5, 0)
    @tractor = Engine.new(10, 10)
    @ubermover = Engine.new(30, 15)
  end

  def test_accelerate_power
    assert_equal(5, @pedal.acceleration)
  end
  def test_fuel_consumption
    assert_equal(10, @tractor.fuel_consumption)
  end
end