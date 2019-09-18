require("minitest/autorun")
require("minitest/rg")
require_relative("../Bear")
require_relative("../River")
require_relative("../Fish")

class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new("Big Grizzly", "Long Haired")

    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Shark")
    @fish3 = Fish.new("Pufferfish")

    @fish = [@fish1, @fish2, @fish3]

    @river = River.new("The Nile")

  end

  def test_get_bear_name()
    assert_equal("Big Grizzly", @bear.bear_name)
  end

  def test_get_bear_type()
    assert_equal("Long Haired", @bear.bear_type)
  end

  def test_count_stomach_contents()
    assert_equal(0, @bear.count_stomach_contents)
  end

  def test_eat_fish
    @bear.add_fish_to_stomach(@fish1)
    assert_equal(1, @bear.count_stomach_contents())
  end

  def test_eat_two_fish
    @bear.add_fish_to_stomach(@fish1)
    @bear.add_fish_to_stomach(@fish2)
    assert_equal(2, @bear.count_stomach_contents())
  end

  def test_catch_fish_from_river
    @river.add_fish_to_river(@fish)
    @bear.add_fish_to_stomach(@river)
    assert_equal(0, @river.fish_in_river)
    assert_equal(3, @bear.count_stomach_contents())
  end

end
