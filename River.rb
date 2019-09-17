class River

attr_reader(:river_name)

  def initialize(river_name)
    @river_name = river_name
    @fish_in_river = []

  end

  def fish_in_river
    @fish_in_river.length()
  end

  def add_fish_to_river(fishes_to_add)
      for fish in fishes_to_add
        @fish_in_river.push(fish)
      end
    end
end
