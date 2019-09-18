require("minitest/autorun")
require("minitest/rg")
require_relative("../River")
require_relative("../Fish")

class TestRiver < MiniTest::Test

  def setup
    @river = River.new("The Nile")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Shark")
    @fish3 = Fish.new("Pufferfish")

    @fish = [@fish1, @fish2, @fish3]
  end

  def test_river_name
    assert_equal("The Nile", @river.river_name)
  end

  def test_number_of_fish_in_river()
      assert_equal(0, @river.fish_in_river())
    end

  def test_add_fish_to_river
    @river.add_fish_to_river(@fish)
    assert_equal(3, @river.fish_in_river)
  end

end
