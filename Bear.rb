class Bear

  attr_reader(:bear_name, :bear_type)

  def initialize(bear_name, bear_type)
    @bear_name = bear_name
    @bear_type = bear_type
    @bear_stomach = []
  end

end
