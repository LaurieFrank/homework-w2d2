require("minitest/autorun")
require("minitest/rg")
require_relative("../Bear")
require_relative("../River")
require_relative("../Fish")

#the below code wouldn't work and I can't work out why
# class TestBear < Minitest::Test
#
#   def setup()
#     @bear = Bear.new("Yogi the Great Grizzly Beast", "Brown")
#     @river = River.new()
#   end
#
#   def test_get_bear_name
#     assert_equal("Yogi the Great Grizzly Beast", @bear.bear_name)
#   end
#
#
#
# end

class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new("Big Grizzly", "Long Haired")
  end

  def test_get_bear_name
    assert_equal("Big Grizzly", @bear.bear_name)
  end

  def test_get_bear_type
    assert_equal("Long Haired", @bear.bear_type)
  end
end
