require("minitest/autorun")
require("minitest/rg")
require_relative("../Fish")

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("Salty")
  end



end
