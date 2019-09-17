require("minitest/autorun")
require("minitest/rg")
require_relative("../Bear")
require_relative("../River")
require_relative("../Fish")

class TestBear < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi the Great Grizzly Beast", "Brown")
    @river = River.new()
  end





end
