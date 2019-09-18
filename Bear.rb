class Bear

  attr_reader(:bear_name, :bear_type)

  def initialize(bear_name, bear_type)
    @bear_name = bear_name
    @bear_type = bear_type
    @bear_stomach = []
  end

  def count_stomach_contents()
    return @bear_stomach.length()
  end

  def add_fish_to_stomach(fresh_fish)
      @bear_stomach.push(fresh_fish)
  end

  def catch_fish_from_river(river)
    add_fish_to_river(river.)
  end

  # def pick_up_from_stop(stop)
  #     add_queue(stop.get_passengers_in_queue())
  #     stop.empty_queue()
  #   end



end
