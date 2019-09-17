require("minitest/autorun")
require("minitest/rg")
require_relative("../Fish")

# class TestFish < MiniTest::Test
#
#   def setup
#     @fish1 = Fish.new("Salty")
#   end
#
#   def test_fish_name
#     assert_equal("Salty", @fish1.fish_name)
#   end
#
  class TestFish < MiniTest::Test

    def setup
      @fish1 = Fish.new("Dory")
    end

    def test_fish_name()
      assert_equal("Dory", @fish1.fish_name)
    end

  end
