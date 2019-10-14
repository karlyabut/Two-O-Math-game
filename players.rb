class Players
  attr_accessor :name, :life, :turn
  def initialize(name, life, turn)
    @name = name
    @life = life
    @turn = turn
  end

  # def next(name, life, turn)
  #   @name = name
  #   @life = life
  #   @turn = turn
  # end
  
end